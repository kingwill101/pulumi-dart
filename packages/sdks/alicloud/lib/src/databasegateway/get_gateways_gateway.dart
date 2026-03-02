// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateways_gateway_gateway_instance.dart';

class GetGatewaysGateway {
  /// The creation time of Gateway.
  final pulumi.Input<String> createTime;
  /// The description of Gateway.
  final pulumi.Input<String> gatewayDesc;
  final pulumi.Input<List<GetGatewaysGatewayGatewayInstance>> gatewayInstances;
  /// The name of the Gateway.
  final pulumi.Input<String> gatewayName;
  /// A host of information.
  final pulumi.Input<String> hosts;
  /// The ID of Gateway.
  final pulumi.Input<String> id;
  /// The Modify time of Gateway.
  final pulumi.Input<String> modifiedTime;
  /// The parent node Id of Gateway.
  final pulumi.Input<String> parentId;
  /// The status of gateway. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  final pulumi.Input<String> status;
  /// The user's id.
  final pulumi.Input<String> userId;

  /// Creates a new [GetGatewaysGateway].
  /// [createTime] The creation time of Gateway.
  /// [gatewayDesc] The description of Gateway.
  /// [gatewayInstances] Required.
  /// [gatewayName] The name of the Gateway.
  /// [hosts] A host of information.
  /// [id] The ID of Gateway.
  /// [modifiedTime] The Modify time of Gateway.
  /// [parentId] The parent node Id of Gateway.
  /// [status] The status of gateway. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  /// [userId] The user's id.
  GetGatewaysGateway({
    required this.createTime,
    required this.gatewayDesc,
    required this.gatewayInstances,
    required this.gatewayName,
    required this.hosts,
    required this.id,
    required this.modifiedTime,
    required this.parentId,
    required this.status,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'gatewayDesc': gatewayDesc,
      'gatewayInstances': pulumi.Input.mapInputValue<List<GetGatewaysGatewayGatewayInstance>, List<Map<String, dynamic>>>(gatewayInstances, (value) => pulumi.Input.encodeList<GetGatewaysGatewayGatewayInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayName': gatewayName,
      'hosts': hosts,
      'id': id,
      'modifiedTime': modifiedTime,
      'parentId': parentId,
      'status': status,
      'userId': userId,
    };
  }

  factory GetGatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetGatewaysGateway(
      createTime: (map['createTime'] as String).input(),
      gatewayDesc: (map['gatewayDesc'] as String).input(),
      gatewayInstances: (pulumi.Input.decodeList<GetGatewaysGatewayGatewayInstance>(map['gatewayInstances'], (value) => GetGatewaysGatewayGatewayInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      hosts: (map['hosts'] as String).input(),
      id: (map['id'] as String).input(),
      modifiedTime: (map['modifiedTime'] as String).input(),
      parentId: (map['parentId'] as String).input(),
      status: (map['status'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

