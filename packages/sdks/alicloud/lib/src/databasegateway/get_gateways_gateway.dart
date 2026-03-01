// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateways_gateway_gateway_instance.dart';

class GetGatewaysGateway {
  /// The creation time of Gateway.
  final String createTime;
  /// The description of Gateway.
  final String gatewayDesc;
  final List<GetGatewaysGatewayGatewayInstance> gatewayInstances;
  /// The name of the Gateway.
  final String gatewayName;
  /// A host of information.
  final String hosts;
  /// The ID of Gateway.
  final String id;
  /// The Modify time of Gateway.
  final String modifiedTime;
  /// The parent node Id of Gateway.
  final String parentId;
  /// The status of gateway. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  final String status;
  /// The user's id.
  final String userId;

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
      'gatewayInstances': pulumi.Input.encodeList<GetGatewaysGatewayGatewayInstance, Map<String, dynamic>>(gatewayInstances, (value) => value.toMap()),
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
      createTime: map['createTime'] as String,
      gatewayDesc: map['gatewayDesc'] as String,
      gatewayInstances: pulumi.Input.decodeList<GetGatewaysGatewayGatewayInstance>(map['gatewayInstances'], (value) => GetGatewaysGatewayGatewayInstance.fromMap((value as Map).cast<String, dynamic>())),
      gatewayName: map['gatewayName'] as String,
      hosts: map['hosts'] as String,
      id: map['id'] as String,
      modifiedTime: map['modifiedTime'] as String,
      parentId: map['parentId'] as String,
      status: map['status'] as String,
      userId: map['userId'] as String,
    );
  }
}

