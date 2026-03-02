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
    this.endpointName,
    this.ipConfigs,
    this.securityGroupId,
    this.status,
    this.vpcId,
    this.vpcRegionId,
  });

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
      endpointName: map['endpointName'] == null ? null : (map['endpointName'] as String).input(),
      ipConfigs: map['ipConfigs'] == null ? null : (pulumi.Input.decodeList<EndpointIpConfig>(map['ipConfigs'], (value) => EndpointIpConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpcRegionId: map['vpcRegionId'] == null ? null : (map['vpcRegionId'] as String).input(),
    );
  }
}

