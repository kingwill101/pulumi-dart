// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_ip_config.dart';

/// {@template pulumi_pvtz_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_pvtz_endpoint_endpoint_args_doc}
class EndpointArgs {
  /// The name of the resource.
  final pulumi.Input<String> endpointName;
  /// The Ip Configs. See `ip_configs` below. **NOTE:** In order to ensure high availability, add at least 2 and up to 6.
  final pulumi.Input<List<EndpointIpConfig>> ipConfigs;
  /// The ID of the Security Group.
  final pulumi.Input<String> securityGroupId;
  /// The VPC ID.
  final pulumi.Input<String> vpcId;
  /// The Region of the VPC.
  final pulumi.Input<String> vpcRegionId;

  /// Creates a new [EndpointArgs].
  /// [endpointName] The name of the resource.
  /// [ipConfigs] The Ip Configs. See `ip_configs` below. **NOTE:** In order to ensure high availability, add at least 2 and up to 6.
  /// [securityGroupId] The ID of the Security Group.
  /// [vpcId] The VPC ID.
  /// [vpcRegionId] The Region of the VPC.
  EndpointArgs({
    required String endpointName,
    required List<EndpointIpConfig> ipConfigs,
    required String securityGroupId,
    required String vpcId,
    required String vpcRegionId,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      ipConfigs = pulumi.Input.asInput<List<EndpointIpConfig>>(ipConfigs),
      securityGroupId = pulumi.Input.asInput<String>(securityGroupId),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vpcRegionId = pulumi.Input.asInput<String>(vpcRegionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'ipConfigs': pulumi.Input.mapInputValue<List<EndpointIpConfig>, List<Map<String, dynamic>>>(ipConfigs, (value) => pulumi.Input.encodeList<EndpointIpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupId': securityGroupId,
      'vpcId': vpcId,
      'vpcRegionId': vpcRegionId,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      endpointName: map['endpointName'] as String,
      ipConfigs: pulumi.Input.decodeList<EndpointIpConfig>(map['ipConfigs'], (value) => EndpointIpConfig.fromMap((value as Map).cast<String, dynamic>())),
      securityGroupId: map['securityGroupId'] as String,
      vpcId: map['vpcId'] as String,
      vpcRegionId: map['vpcRegionId'] as String,
    );
  }
}

