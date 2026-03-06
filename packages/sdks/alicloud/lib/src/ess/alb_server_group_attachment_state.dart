// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlbServerGroupAttachment resources.
class AlbServerGroupAttachmentState {
  /// ID of Alb Server Group.
  final pulumi.Input<String>? albServerGroupId;
  /// If instances of scaling group are attached/removed from slb backend server when attach/detach alb
  /// server group from scaling group. Default to false.
  final pulumi.Input<bool>? forceAttach;
  /// The port will be used for Alb Server Group backend server.
  final pulumi.Input<int>? port;
  /// ID of the scaling group.
  final pulumi.Input<String>? scalingGroupId;
  /// The weight of an ECS instance attached to the Alb Server Group.
  final pulumi.Input<int>? weight;

  /// Creates a new [AlbServerGroupAttachmentState].
  /// [albServerGroupId] ID of Alb Server Group.
  /// [forceAttach] If instances of scaling group are attached/removed from slb backend server when attach/detach alb
  /// [port] The port will be used for Alb Server Group backend server.
  /// [scalingGroupId] ID of the scaling group.
  /// [weight] The weight of an ECS instance attached to the Alb Server Group.
  const AlbServerGroupAttachmentState({
    this.albServerGroupId,
    this.forceAttach,
    this.port,
    this.scalingGroupId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albServerGroupId': ?albServerGroupId,
      'forceAttach': ?forceAttach,
      'port': ?port,
      'scalingGroupId': ?scalingGroupId,
      'weight': ?weight,
    };
  }

  factory AlbServerGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return AlbServerGroupAttachmentState(
      albServerGroupId: (() { final guardedValue = map['albServerGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceAttach: (() { final guardedValue = map['forceAttach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scalingGroupId: (() { final guardedValue = map['scalingGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

