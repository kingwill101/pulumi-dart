// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_ip_config.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// The name of the resource.
  final pulumi.Input<String>? endpointName;
  /// The Ip Configs. See `ip_configs` below. **NOTE:** In order to ensure high availability, add at least 2 and up to 6.
  final pulumi.Input<List<EndpointIpConfig>>? ipConfigs;
  /// The ID of the Security Group.
  final pulumi.Input<String>? securityGroupId;
  /// The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  final pulumi.Input<String>? status;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The Region of the VPC.
  final pulumi.Input<String>? vpcRegionId;

  /// Creates a new [EndpointState].
  /// [endpointName] The name of the resource.
  /// [ipConfigs] The Ip Configs. See `ip_configs` below. **NOTE:** In order to ensure high availability, add at least 2 and up to 6.
  /// [securityGroupId] The ID of the Security Group.
  /// [status] The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  /// [vpcId] The VPC ID.
  /// [vpcRegionId] The Region of the VPC.
  EndpointState({
    pulumi.Output<String>? endpointName,
    pulumi.Output<List<EndpointIpConfig>>? ipConfigs,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcRegionId,
  }) :
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      ipConfigs = pulumi.Input.asOptionalInput<List<EndpointIpConfig>>(ipConfigs),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcRegionId = pulumi.Input.asOptionalInput<String>(vpcRegionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'ipConfigs': ?pulumi.Input.mapOptionalInputValue<List<EndpointIpConfig>, List<Map<String, dynamic>>>(ipConfigs, (value) => pulumi.Input.encodeList<EndpointIpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vpcRegionId': ?vpcRegionId,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      endpointName: map['endpointName'] == null ? null : pulumi.Output.create<String>(map['endpointName'] as String),
      ipConfigs: map['ipConfigs'] == null ? null : pulumi.Output.create<List<EndpointIpConfig>>(pulumi.Input.decodeList<EndpointIpConfig>(map['ipConfigs'], (value) => EndpointIpConfig.fromMap((value as Map).cast<String, dynamic>()))),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcRegionId: map['vpcRegionId'] == null ? null : pulumi.Output.create<String>(map['vpcRegionId'] as String),
    );
  }
}

