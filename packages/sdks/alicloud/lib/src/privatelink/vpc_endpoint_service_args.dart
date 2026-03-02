// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_vpc_endpoint_service_vpc_endpoint_service_args_doc}
/// The set of arguments for VpcEndpointService.
/// {@endtemplate}
/// {@macro pulumi_privatelink_vpc_endpoint_service_vpc_endpoint_service_args_doc}
class VpcEndpointServiceArgs {
  /// The IP address version.
  final pulumi.Input<String>? addressIpVersion;
  /// Indicates whether the endpoint service automatically accepts endpoint connection requests. Valid values:
  final pulumi.Input<bool>? autoAcceptConnection;
  /// The default bandwidth of the endpoint connection. Valid values: 100 to 10240. Unit: Mbit/s.
  final pulumi.Input<int>? connectBandwidth;
  /// Specifies whether to perform only a dry run, without performing the actual request.
  final pulumi.Input<bool>? dryRun;
  /// The payer of the endpoint service. Valid values:
  /// - `Endpoint`: the service consumer.
  /// - `EndpointService`: the service provider.
  final pulumi.Input<String>? payer;
  /// The resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The description of the endpoint service.
  final pulumi.Input<String>? serviceDescription;
  /// The service resource type. Value:
  final pulumi.Input<String>? serviceResourceType;
  /// Specifies whether to enable IPv6 for the endpoint service. Valid values:
  final pulumi.Input<bool>? serviceSupportIpv6;
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies whether to first resolve the domain name of the nearest endpoint that is associated with the endpoint service. Valid values:
  final pulumi.Input<bool>? zoneAffinityEnabled;

  /// Creates a new [VpcEndpointServiceArgs].
  /// [addressIpVersion] The IP address version.
  /// [autoAcceptConnection] Indicates whether the endpoint service automatically accepts endpoint connection requests. Valid values:
  /// [connectBandwidth] The default bandwidth of the endpoint connection. Valid values: 100 to 10240. Unit: Mbit/s.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request.
  /// [payer] The payer of the endpoint service. Valid values:
  /// [resourceGroupId] The resource group ID.
  /// [serviceDescription] The description of the endpoint service.
  /// [serviceResourceType] The service resource type. Value:
  /// [serviceSupportIpv6] Specifies whether to enable IPv6 for the endpoint service. Valid values:
  /// [tags] The list of tags.
  /// [zoneAffinityEnabled] Specifies whether to first resolve the domain name of the nearest endpoint that is associated with the endpoint service. Valid values:
  VpcEndpointServiceArgs({
    this.addressIpVersion,
    this.autoAcceptConnection,
    this.connectBandwidth,
    this.dryRun,
    this.payer,
    this.resourceGroupId,
    this.serviceDescription,
    this.serviceResourceType,
    this.serviceSupportIpv6,
    this.tags,
    this.zoneAffinityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'autoAcceptConnection': ?autoAcceptConnection,
      'connectBandwidth': ?connectBandwidth,
      'dryRun': ?dryRun,
      'payer': ?payer,
      'resourceGroupId': ?resourceGroupId,
      'serviceDescription': ?serviceDescription,
      'serviceResourceType': ?serviceResourceType,
      'serviceSupportIpv6': ?serviceSupportIpv6,
      'tags': ?tags,
      'zoneAffinityEnabled': ?zoneAffinityEnabled,
    };
  }

  factory VpcEndpointServiceArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceArgs(
      addressIpVersion: map['addressIpVersion'] == null ? null : (map['addressIpVersion'] as String).input(),
      autoAcceptConnection: map['autoAcceptConnection'] == null ? null : (map['autoAcceptConnection'] as bool).input(),
      connectBandwidth: map['connectBandwidth'] == null ? null : (map['connectBandwidth'] as int).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      payer: map['payer'] == null ? null : (map['payer'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      serviceDescription: map['serviceDescription'] == null ? null : (map['serviceDescription'] as String).input(),
      serviceResourceType: map['serviceResourceType'] == null ? null : (map['serviceResourceType'] as String).input(),
      serviceSupportIpv6: map['serviceSupportIpv6'] == null ? null : (map['serviceSupportIpv6'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneAffinityEnabled: map['zoneAffinityEnabled'] == null ? null : (map['zoneAffinityEnabled'] as bool).input(),
    );
  }
}

