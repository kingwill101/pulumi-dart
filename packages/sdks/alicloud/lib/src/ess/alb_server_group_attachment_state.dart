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
    pulumi.Output<String>? albServerGroupId,
    pulumi.Output<bool>? forceAttach,
    pulumi.Output<int>? port,
    pulumi.Output<String>? scalingGroupId,
    pulumi.Output<int>? weight,
  }) :
      albServerGroupId = pulumi.Input.asOptionalInput<String>(albServerGroupId),
      forceAttach = pulumi.Input.asOptionalInput<bool>(forceAttach),
      port = pulumi.Input.asOptionalInput<int>(port),
      scalingGroupId = pulumi.Input.asOptionalInput<String>(scalingGroupId),
      weight = pulumi.Input.asOptionalInput<int>(weight);

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
      albServerGroupId: map['albServerGroupId'] == null ? null : pulumi.Output.create<String>(map['albServerGroupId'] as String),
      forceAttach: map['forceAttach'] == null ? null : pulumi.Output.create<bool>(map['forceAttach'] as bool),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      scalingGroupId: map['scalingGroupId'] == null ? null : pulumi.Output.create<String>(map['scalingGroupId'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

