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
  AlbServerGroupAttachmentState({
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
      albServerGroupId: map['albServerGroupId'] == null ? null : (map['albServerGroupId']! as String).input(),
      forceAttach: map['forceAttach'] == null ? null : (map['forceAttach']! as bool).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      scalingGroupId: map['scalingGroupId'] == null ? null : (map['scalingGroupId']! as String).input(),
      weight: map['weight'] == null ? null : (map['weight']! as int).input(),
    );
  }
}

