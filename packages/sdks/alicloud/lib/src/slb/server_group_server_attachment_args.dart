// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_server_group_server_attachment_server_group_server_attachment_args_doc}
/// The set of arguments for ServerGroupServerAttachment.
/// {@endtemplate}
/// {@macro pulumi_slb_server_group_server_attachment_server_group_server_attachment_args_doc}
class ServerGroupServerAttachmentArgs {
  /// The description of the backend server.
  final pulumi.Input<String>? description;
  /// The port that is used by the backend server. Valid values: `1` to `65535`.
  final pulumi.Input<int> port;
  /// The ID of the server group.
  final pulumi.Input<String> serverGroupId;
  /// The ID of the backend server. You can specify the ID of an Elastic Compute Service (ECS) instance or an elastic network interface (ENI).
  final pulumi.Input<String> serverId;
  /// The type of backend server. Valid values: `ecs`, `eni`, `eci`. **NOTE:** From version 1.246.0, `type` can be set to `eci`.
  final pulumi.Input<String>? type;
  /// The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the value is set to `0`, no requests are forwarded to the backend server.
  final pulumi.Input<int>? weight;

  /// Creates a new [ServerGroupServerAttachmentArgs].
  /// [description] The description of the backend server.
  /// [port] The port that is used by the backend server. Valid values: `1` to `65535`.
  /// [serverGroupId] The ID of the server group.
  /// [serverId] The ID of the backend server. You can specify the ID of an Elastic Compute Service (ECS) instance or an elastic network interface (ENI).
  /// [type] The type of backend server. Valid values: `ecs`, `eni`, `eci`. **NOTE:** From version 1.246.0, `type` can be set to `eci`.
  /// [weight] The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the value is set to `0`, no requests are forwarded to the backend server.
  ServerGroupServerAttachmentArgs({
    this.description,
    required this.port,
    required this.serverGroupId,
    required this.serverId,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'port': port,
      'serverGroupId': serverGroupId,
      'serverId': serverId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory ServerGroupServerAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupServerAttachmentArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      port: (map['port'] as int).input(),
      serverGroupId: (map['serverGroupId'] as String).input(),
      serverId: (map['serverId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

