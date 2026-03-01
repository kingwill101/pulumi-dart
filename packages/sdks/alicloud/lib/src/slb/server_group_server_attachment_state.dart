// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerGroupServerAttachment resources.
class ServerGroupServerAttachmentState {
  /// The description of the backend server.
  final pulumi.Input<String>? description;
  /// The port that is used by the backend server. Valid values: `1` to `65535`.
  final pulumi.Input<int>? port;
  /// The ID of the server group.
  final pulumi.Input<String>? serverGroupId;
  /// The ID of the backend server. You can specify the ID of an Elastic Compute Service (ECS) instance or an elastic network interface (ENI).
  final pulumi.Input<String>? serverId;
  /// The type of backend server. Valid values: `ecs`, `eni`, `eci`. **NOTE:** From version 1.246.0, `type` can be set to `eci`.
  final pulumi.Input<String>? type;
  /// The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the value is set to `0`, no requests are forwarded to the backend server.
  final pulumi.Input<int>? weight;

  /// Creates a new [ServerGroupServerAttachmentState].
  /// [description] The description of the backend server.
  /// [port] The port that is used by the backend server. Valid values: `1` to `65535`.
  /// [serverGroupId] The ID of the server group.
  /// [serverId] The ID of the backend server. You can specify the ID of an Elastic Compute Service (ECS) instance or an elastic network interface (ENI).
  /// [type] The type of backend server. Valid values: `ecs`, `eni`, `eci`. **NOTE:** From version 1.246.0, `type` can be set to `eci`.
  /// [weight] The weight of the backend server. Valid values: `0` to `100`. Default value: `100`. If the value is set to `0`, no requests are forwarded to the backend server.
  ServerGroupServerAttachmentState({
    pulumi.Output<String>? description,
    pulumi.Output<int>? port,
    pulumi.Output<String>? serverGroupId,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? type,
    pulumi.Output<int>? weight,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      port = pulumi.Input.asOptionalInput<int>(port),
      serverGroupId = pulumi.Input.asOptionalInput<String>(serverGroupId),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      type = pulumi.Input.asOptionalInput<String>(type),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'port': ?port,
      'serverGroupId': ?serverGroupId,
      'serverId': ?serverId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory ServerGroupServerAttachmentState.fromMap(Map<String, dynamic> map) {
    return ServerGroupServerAttachmentState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      serverGroupId: map['serverGroupId'] == null ? null : pulumi.Output.create<String>(map['serverGroupId'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

