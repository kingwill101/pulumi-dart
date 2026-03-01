// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_server_group_server_attachment_server_group_server_attachment_args_doc}
/// The set of arguments for ServerGroupServerAttachment.
/// {@endtemplate}
/// {@macro pulumi_nlb_server_group_server_attachment_server_group_server_attachment_args_doc}
class ServerGroupServerAttachmentArgs {
  /// The description of the servers.
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  final pulumi.Input<String>? description;
  /// The port that is used by the backend server. Valid values: `1` to `65535`.
  final pulumi.Input<int>? port;
  /// The ID of the server group.
  final pulumi.Input<String> serverGroupId;
  /// The ID of the server.
  ///
  /// - If the server group type is `Instance`, set the ServerId parameter to the ID of an Elastic Compute Service (ECS) instance, an elastic network interface (ENI), or an elastic container instance. These backend servers are specified by `Ecs`, `Eni`, or `Eci`.
  /// - If the server group type is `Ip`, set the ServerId parameter to an IP address.
  final pulumi.Input<String> serverId;
  /// The IP address of the server. If the server group type is `Ip`, set the ServerId parameter to an IP address.
  final pulumi.Input<String>? serverIp;
  /// The type of the backend server. Valid values:
  ///
  /// - `Ecs`: ECS instance
  /// - `Eni`: ENI
  /// - `Eci`: an elastic container instance
  /// - `Ip`: an IP address
  final pulumi.Input<String> serverType;
  /// The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the weight of a backend server is set to `0`, no requests are forwarded to the backend server.
  final pulumi.Input<int>? weight;

  /// Creates a new [ServerGroupServerAttachmentArgs].
  /// [description] The description of the servers.
  /// [port] The port that is used by the backend server. Valid values: `1` to `65535`.
  /// [serverGroupId] The ID of the server group.
  /// [serverId] The ID of the server.
  /// [serverIp] The IP address of the server. If the server group type is `Ip`, set the ServerId parameter to an IP address.
  /// [serverType] The type of the backend server. Valid values:
  /// [weight] The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the weight of a backend server is set to `0`, no requests are forwarded to the backend server.
  ServerGroupServerAttachmentArgs({
    String? description,
    int? port,
    required String serverGroupId,
    required String serverId,
    String? serverIp,
    required String serverType,
    int? weight,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      port = pulumi.Input.asOptionalInput<int>(port),
      serverGroupId = pulumi.Input.asInput<String>(serverGroupId),
      serverId = pulumi.Input.asInput<String>(serverId),
      serverIp = pulumi.Input.asOptionalInput<String>(serverIp),
      serverType = pulumi.Input.asInput<String>(serverType),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'port': ?port,
      'serverGroupId': serverGroupId,
      'serverId': serverId,
      'serverIp': ?serverIp,
      'serverType': serverType,
      'weight': ?weight,
    };
  }

  factory ServerGroupServerAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupServerAttachmentArgs(
      description: map['description'] == null ? null : map['description'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      serverGroupId: map['serverGroupId'] as String,
      serverId: map['serverId'] as String,
      serverIp: map['serverIp'] == null ? null : map['serverIp'] as String,
      serverType: map['serverType'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

