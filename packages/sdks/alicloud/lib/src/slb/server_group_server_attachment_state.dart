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
  const ServerGroupServerAttachmentState({
    this.description,
    this.port,
    this.serverGroupId,
    this.serverId,
    this.type,
    this.weight,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

