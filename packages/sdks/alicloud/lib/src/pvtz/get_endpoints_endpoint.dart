// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoints_endpoint_ip_config.dart';

class GetEndpointsEndpoint {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The name of the resource.
  final pulumi.Input<String> endpointName;
  final pulumi.Input<String> id;
  /// The Ip Configs.
  final pulumi.Input<List<GetEndpointsEndpointIpConfig>> ipConfigs;
  /// The ID of the Security Group.
  final pulumi.Input<String> securityGroupId;
  /// The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  final pulumi.Input<String> status;
  /// The VPC ID.
  final pulumi.Input<String> vpcId;
  /// The name of the VPC.
  final pulumi.Input<String> vpcName;
  /// The Region of the VPC.
  final pulumi.Input<String> vpcRegionId;

  /// Creates a new [GetEndpointsEndpoint].
  /// [createTime] The creation time of the resource.
  /// [endpointName] The name of the resource.
  /// [id] Required.
  /// [ipConfigs] The Ip Configs.
  /// [securityGroupId] The ID of the Security Group.
  /// [status] The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  /// [vpcId] The VPC ID.
  /// [vpcName] The name of the VPC.
  /// [vpcRegionId] The Region of the VPC.
  const GetEndpointsEndpoint({
    required this.createTime,
    required this.endpointName,
    required this.id,
    required this.ipConfigs,
    required this.securityGroupId,
    required this.status,
    required this.vpcId,
    required this.vpcName,
    required this.vpcRegionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endpointName': endpointName,
      'id': id,
      'ipConfigs': pulumi.Input.mapInputValue<List<GetEndpointsEndpointIpConfig>, List<Map<String, dynamic>>>(ipConfigs, (value) => pulumi.Input.encodeList<GetEndpointsEndpointIpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroupId': securityGroupId,
      'status': status,
      'vpcId': vpcId,
      'vpcName': vpcName,
      'vpcRegionId': vpcRegionId,
    };
  }

  factory GetEndpointsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetEndpointsEndpoint(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEndpointsEndpointIpConfig>(map['ipConfigs']!, (value) => GetEndpointsEndpointIpConfig.fromMap((value as Map).cast<String, dynamic>()))),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
      vpcRegionId: pulumi.Input.fromValue(map['vpcRegionId'] as String),
    );
  }
}

