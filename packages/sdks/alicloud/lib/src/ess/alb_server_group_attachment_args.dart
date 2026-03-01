// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_alb_server_group_attachment_alb_server_group_attachment_args_doc}
/// The set of arguments for AlbServerGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_ess_alb_server_group_attachment_alb_server_group_attachment_args_doc}
class AlbServerGroupAttachmentArgs {
  /// ID of Alb Server Group.
  final pulumi.Input<String> albServerGroupId;
  /// If instances of scaling group are attached/removed from slb backend server when attach/detach alb
  /// server group from scaling group. Default to false.
  final pulumi.Input<bool>? forceAttach;
  /// The port will be used for Alb Server Group backend server.
  final pulumi.Input<int> port;
  /// ID of the scaling group.
  final pulumi.Input<String> scalingGroupId;
  /// The weight of an ECS instance attached to the Alb Server Group.
  final pulumi.Input<int> weight;

  /// Creates a new [AlbServerGroupAttachmentArgs].
  /// [albServerGroupId] ID of Alb Server Group.
  /// [forceAttach] If instances of scaling group are attached/removed from slb backend server when attach/detach alb
  /// [port] The port will be used for Alb Server Group backend server.
  /// [scalingGroupId] ID of the scaling group.
  /// [weight] The weight of an ECS instance attached to the Alb Server Group.
  AlbServerGroupAttachmentArgs({
    required pulumi.Output<String> albServerGroupId,
    pulumi.Output<bool>? forceAttach,
    required pulumi.Output<int> port,
    required pulumi.Output<String> scalingGroupId,
    required pulumi.Output<int> weight,
  }) :
      albServerGroupId = pulumi.Input.asInput<String>(albServerGroupId),
      forceAttach = pulumi.Input.asOptionalInput<bool>(forceAttach),
      port = pulumi.Input.asInput<int>(port),
      scalingGroupId = pulumi.Input.asInput<String>(scalingGroupId),
      weight = pulumi.Input.asInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'albServerGroupId': albServerGroupId,
      'forceAttach': ?forceAttach,
      'port': port,
      'scalingGroupId': scalingGroupId,
      'weight': weight,
    };
  }

  factory AlbServerGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AlbServerGroupAttachmentArgs(
      albServerGroupId: pulumi.Output.create<String>(map['albServerGroupId'] as String),
      forceAttach: map['forceAttach'] == null ? null : pulumi.Output.create<bool>(map['forceAttach'] as bool),
      port: pulumi.Output.create<int>(map['port'] as int),
      scalingGroupId: pulumi.Output.create<String>(map['scalingGroupId'] as String),
      weight: pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

