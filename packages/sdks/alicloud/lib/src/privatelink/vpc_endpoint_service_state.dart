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
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<bool>? autoAcceptConnection,
    pulumi.Output<int>? connectBandwidth,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? payer,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? serviceBusinessStatus,
    pulumi.Output<String>? serviceDescription,
    pulumi.Output<String>? serviceDomain,
    pulumi.Output<String>? serviceResourceType,
    pulumi.Output<bool>? serviceSupportIpv6,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcEndpointServiceName,
    pulumi.Output<bool>? zoneAffinityEnabled,
  }) :
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      autoAcceptConnection = pulumi.Input.asOptionalInput<bool>(autoAcceptConnection),
      connectBandwidth = pulumi.Input.asOptionalInput<int>(connectBandwidth),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      payer = pulumi.Input.asOptionalInput<String>(payer),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serviceBusinessStatus = pulumi.Input.asOptionalInput<String>(serviceBusinessStatus),
      serviceDescription = pulumi.Input.asOptionalInput<String>(serviceDescription),
      serviceDomain = pulumi.Input.asOptionalInput<String>(serviceDomain),
      serviceResourceType = pulumi.Input.asOptionalInput<String>(serviceResourceType),
      serviceSupportIpv6 = pulumi.Input.asOptionalInput<bool>(serviceSupportIpv6),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcEndpointServiceName = pulumi.Input.asOptionalInput<String>(vpcEndpointServiceName),
      zoneAffinityEnabled = pulumi.Input.asOptionalInput<bool>(zoneAffinityEnabled);

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
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      autoAcceptConnection: map['autoAcceptConnection'] == null ? null : pulumi.Output.create<bool>(map['autoAcceptConnection'] as bool),
      connectBandwidth: map['connectBandwidth'] == null ? null : pulumi.Output.create<int>(map['connectBandwidth'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      payer: map['payer'] == null ? null : pulumi.Output.create<String>(map['payer'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      serviceBusinessStatus: map['serviceBusinessStatus'] == null ? null : pulumi.Output.create<String>(map['serviceBusinessStatus'] as String),
      serviceDescription: map['serviceDescription'] == null ? null : pulumi.Output.create<String>(map['serviceDescription'] as String),
      serviceDomain: map['serviceDomain'] == null ? null : pulumi.Output.create<String>(map['serviceDomain'] as String),
      serviceResourceType: map['serviceResourceType'] == null ? null : pulumi.Output.create<String>(map['serviceResourceType'] as String),
      serviceSupportIpv6: map['serviceSupportIpv6'] == null ? null : pulumi.Output.create<bool>(map['serviceSupportIpv6'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcEndpointServiceName: map['vpcEndpointServiceName'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointServiceName'] as String),
      zoneAffinityEnabled: map['zoneAffinityEnabled'] == null ? null : pulumi.Output.create<bool>(map['zoneAffinityEnabled'] as bool),
    );
  }
}

