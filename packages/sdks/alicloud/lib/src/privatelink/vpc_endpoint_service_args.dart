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
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<bool>? autoAcceptConnection,
    pulumi.Output<int>? connectBandwidth,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? payer,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? serviceDescription,
    pulumi.Output<String>? serviceResourceType,
    pulumi.Output<bool>? serviceSupportIpv6,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? zoneAffinityEnabled,
  }) :
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      autoAcceptConnection = pulumi.Input.asOptionalInput<bool>(autoAcceptConnection),
      connectBandwidth = pulumi.Input.asOptionalInput<int>(connectBandwidth),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      payer = pulumi.Input.asOptionalInput<String>(payer),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serviceDescription = pulumi.Input.asOptionalInput<String>(serviceDescription),
      serviceResourceType = pulumi.Input.asOptionalInput<String>(serviceResourceType),
      serviceSupportIpv6 = pulumi.Input.asOptionalInput<bool>(serviceSupportIpv6),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneAffinityEnabled = pulumi.Input.asOptionalInput<bool>(zoneAffinityEnabled);

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
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      autoAcceptConnection: map['autoAcceptConnection'] == null ? null : pulumi.Output.create<bool>(map['autoAcceptConnection'] as bool),
      connectBandwidth: map['connectBandwidth'] == null ? null : pulumi.Output.create<int>(map['connectBandwidth'] as int),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      payer: map['payer'] == null ? null : pulumi.Output.create<String>(map['payer'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      serviceDescription: map['serviceDescription'] == null ? null : pulumi.Output.create<String>(map['serviceDescription'] as String),
      serviceResourceType: map['serviceResourceType'] == null ? null : pulumi.Output.create<String>(map['serviceResourceType'] as String),
      serviceSupportIpv6: map['serviceSupportIpv6'] == null ? null : pulumi.Output.create<bool>(map['serviceSupportIpv6'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneAffinityEnabled: map['zoneAffinityEnabled'] == null ? null : pulumi.Output.create<bool>(map['zoneAffinityEnabled'] as bool),
    );
  }
}

