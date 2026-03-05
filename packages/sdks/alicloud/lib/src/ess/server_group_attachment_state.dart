// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerGroupAttachment resources.
class ServerGroupAttachmentState {
  /// If instances of scaling group are attached/removed from backend server when
  /// server group from scaling group. Default to false.
  final pulumi.Input<bool>? forceAttach;
  /// The port will be used for Server Group backend server.
  final pulumi.Input<int>? port;
  /// ID of the scaling group.
  final pulumi.Input<String>? scalingGroupId;
  /// ID of Server Group.
  final pulumi.Input<String>? serverGroupId;
  /// The type of server group N. Valid values: ALB, NLB.
  final pulumi.Input<String>? type;
  /// The weight of an ECS instance attached to the Server Group.
  final pulumi.Input<int>? weight;

  /// Creates a new [ServerGroupAttachmentState].
  /// [forceAttach] If instances of scaling group are attached/removed from backend server when
  /// [port] The port will be used for Server Group backend server.
  /// [scalingGroupId] ID of the scaling group.
  /// [serverGroupId] ID of Server Group.
  /// [type] The type of server group N. Valid values: ALB, NLB.
  /// [weight] The weight of an ECS instance attached to the Server Group.
  ServerGroupAttachmentState({
    this.forceAttach,
    this.port,
    this.scalingGroupId,
    this.serverGroupId,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceAttach': ?forceAttach,
      'port': ?port,
      'scalingGroupId': ?scalingGroupId,
      'serverGroupId': ?serverGroupId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory ServerGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return ServerGroupAttachmentState(
      forceAttach: (() { final guardedValue = map['forceAttach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scalingGroupId: (() { final guardedValue = map['scalingGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

