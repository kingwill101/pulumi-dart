// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointService resources.
class VpcEndpointServiceState {
  /// The IP address version.
  final pulumi.Input<String>? addressIpVersion;

  /// Indicates whether the endpoint service automatically accepts endpoint connection requests. Valid values:
  final pulumi.Input<bool>? autoAcceptConnection;

  /// The default bandwidth of the endpoint connection. Valid values: 100 to 10240. Unit: Mbit/s.
  final pulumi.Input<int>? connectBandwidth;

  /// The time when the endpoint service was created.
  final pulumi.Input<String>? createTime;

  /// Specifies whether to perform only a dry run, without performing the actual request.
  final pulumi.Input<bool>? dryRun;

  /// The payer of the endpoint service. Valid values:
  /// - `Endpoint`: the service consumer.
  /// - `EndpointService`: the service provider.
  final pulumi.Input<String>? payer;

  /// The ID of the region to which the endpoint service belongs.
  final pulumi.Input<String>? regionId;

  /// The resource group ID.
  final pulumi.Input<String>? resourceGroupId;

  /// The service state of the endpoint service.
  final pulumi.Input<String>? serviceBusinessStatus;

  /// The description of the endpoint service.
  final pulumi.Input<String>? serviceDescription;

  /// The domain name of the endpoint service.
  final pulumi.Input<String>? serviceDomain;

  /// The service resource type. Value:
  final pulumi.Input<String>? serviceResourceType;

  /// Specifies whether to enable IPv6 for the endpoint service. Valid values:
  final pulumi.Input<bool>? serviceSupportIpv6;

  /// The state of the endpoint service.
  final pulumi.Input<String>? status;

  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the endpoint service.
  final pulumi.Input<String>? vpcEndpointServiceName;

  /// Specifies whether to first resolve the domain name of the nearest endpoint that is associated with the endpoint service. Valid values:
  final pulumi.Input<bool>? zoneAffinityEnabled;

  /// Creates a new [VpcEndpointServiceState].
  /// [addressIpVersion] The IP address version.
  /// [autoAcceptConnection] Indicates whether the endpoint service automatically accepts endpoint connection requests. Valid values:
  /// [connectBandwidth] The default bandwidth of the endpoint connection. Valid values: 100 to 10240. Unit: Mbit/s.
  /// [createTime] The time when the endpoint service was created.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request.
  /// [payer] The payer of the endpoint service. Valid values:
  /// [regionId] The ID of the region to which the endpoint service belongs.
  /// [resourceGroupId] The resource group ID.
  /// [serviceBusinessStatus] The service state of the endpoint service.
  /// [serviceDescription] The description of the endpoint service.
  /// [serviceDomain] The domain name of the endpoint service.
  /// [serviceResourceType] The service resource type. Value:
  /// [serviceSupportIpv6] Specifies whether to enable IPv6 for the endpoint service. Valid values:
  /// [status] The state of the endpoint service.
  /// [tags] The list of tags.
  /// [vpcEndpointServiceName] The name of the endpoint service.
  /// [zoneAffinityEnabled] Specifies whether to first resolve the domain name of the nearest endpoint that is associated with the endpoint service. Valid values:
  VpcEndpointServiceState({
    this.addressIpVersion,
    this.autoAcceptConnection,
    this.connectBandwidth,
    this.createTime,
    this.dryRun,
    this.payer,
    this.regionId,
    this.resourceGroupId,
    this.serviceBusinessStatus,
    this.serviceDescription,
    this.serviceDomain,
    this.serviceResourceType,
    this.serviceSupportIpv6,
    this.status,
    this.tags,
    this.vpcEndpointServiceName,
    this.zoneAffinityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'autoAcceptConnection': ?autoAcceptConnection,
      'connectBandwidth': ?connectBandwidth,
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'payer': ?payer,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'serviceBusinessStatus': ?serviceBusinessStatus,
      'serviceDescription': ?serviceDescription,
      'serviceDomain': ?serviceDomain,
      'serviceResourceType': ?serviceResourceType,
      'serviceSupportIpv6': ?serviceSupportIpv6,
      'status': ?status,
      'tags': ?tags,
      'vpcEndpointServiceName': ?vpcEndpointServiceName,
      'zoneAffinityEnabled': ?zoneAffinityEnabled,
    };
  }

  factory VpcEndpointServiceState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceState(
      addressIpVersion: (() {
        final guardedValue = map['addressIpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoAcceptConnection: (() {
        final guardedValue = map['autoAcceptConnection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      connectBandwidth: (() {
        final guardedValue = map['connectBandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      payer: (() {
        final guardedValue = map['payer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceBusinessStatus: (() {
        final guardedValue = map['serviceBusinessStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDescription: (() {
        final guardedValue = map['serviceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDomain: (() {
        final guardedValue = map['serviceDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceResourceType: (() {
        final guardedValue = map['serviceResourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceSupportIpv6: (() {
        final guardedValue = map['serviceSupportIpv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcEndpointServiceName: (() {
        final guardedValue = map['vpcEndpointServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneAffinityEnabled: (() {
        final guardedValue = map['zoneAffinityEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
