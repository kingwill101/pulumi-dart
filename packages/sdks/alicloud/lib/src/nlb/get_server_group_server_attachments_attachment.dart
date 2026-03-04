// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerGroupServerAttachmentsAttachment {
  /// The description of the backend server.
  final pulumi.Input<String> description;

  /// The ID of the server group. The value is formulated as `&lt;server_group_id&gt;:&lt;server_id&gt;:&lt;server_type&gt;:&lt;port&gt;`.
  final pulumi.Input<String> id;

  /// The port used by the backend server.
  final pulumi.Input<int> port;

  /// The ID of the server group.
  final pulumi.Input<String> serverGroupId;

  /// The ID of the server.
  final pulumi.Input<String> serverId;

  /// The IP address of the backend server.
  final pulumi.Input<String> serverIp;

  /// The type of the backend server.
  final pulumi.Input<String> serverType;

  /// Indicates the status of the backend server.
  final pulumi.Input<String> status;

  /// The weight of the backend server.
  final pulumi.Input<int> weight;

  /// The zone ID of the server.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetServerGroupServerAttachmentsAttachment].
  /// [description] The description of the backend server.
  /// [id] The ID of the server group. The value is formulated as `&lt;server_group_id&gt;:&lt;server_id&gt;:&lt;server_type&gt;:&lt;port&gt;`.
  /// [port] The port used by the backend server.
  /// [serverGroupId] The ID of the server group.
  /// [serverId] The ID of the server.
  /// [serverIp] The IP address of the backend server.
  /// [serverType] The type of the backend server.
  /// [status] Indicates the status of the backend server.
  /// [weight] The weight of the backend server.
  /// [zoneId] The zone ID of the server.
  GetServerGroupServerAttachmentsAttachment({
    required this.description,
    required this.id,
    required this.port,
    required this.serverGroupId,
    required this.serverId,
    required this.serverIp,
    required this.serverType,
    required this.status,
    required this.weight,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'port': port,
      'serverGroupId': serverGroupId,
      'serverId': serverId,
      'serverIp': serverIp,
      'serverType': serverType,
      'status': status,
      'weight': weight,
      'zoneId': zoneId,
    };
  }

  factory GetServerGroupServerAttachmentsAttachment.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServerGroupServerAttachmentsAttachment(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      serverIp: pulumi.Input.fromValue(map['serverIp'] as String),
      serverType: pulumi.Input.fromValue(map['serverType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
