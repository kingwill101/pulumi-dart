// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_server_group_attachment_server_group_attachment_args_doc}
/// The set of arguments for ServerGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_ess_server_group_attachment_server_group_attachment_args_doc}
class ServerGroupAttachmentArgs {
  /// If instances of scaling group are attached/removed from backend server when
  /// server group from scaling group. Default to false.
  final pulumi.Input<bool>? forceAttach;
  /// The port will be used for Server Group backend server.
  final pulumi.Input<int> port;
  /// ID of the scaling group.
  final pulumi.Input<String> scalingGroupId;
  /// ID of Server Group.
  final pulumi.Input<String> serverGroupId;
  /// The type of server group N. Valid values: ALB, NLB.
  final pulumi.Input<String> type;
  /// The weight of an ECS instance attached to the Server Group.
  final pulumi.Input<int> weight;

  /// Creates a new [ServerGroupAttachmentArgs].
  /// [forceAttach] If instances of scaling group are attached/removed from backend server when
  /// [port] The port will be used for Server Group backend server.
  /// [scalingGroupId] ID of the scaling group.
  /// [serverGroupId] ID of Server Group.
  /// [type] The type of server group N. Valid values: ALB, NLB.
  /// [weight] The weight of an ECS instance attached to the Server Group.
  ServerGroupAttachmentArgs({
    this.forceAttach,
    required this.port,
    required this.scalingGroupId,
    required this.serverGroupId,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceAttach': ?forceAttach,
      'port': port,
      'scalingGroupId': scalingGroupId,
      'serverGroupId': serverGroupId,
      'type': type,
      'weight': weight,
    };
  }

  factory ServerGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupAttachmentArgs(
      forceAttach: map['forceAttach'] == null ? null : (map['forceAttach']! as bool).input(),
      port: (map['port'] as int).input(),
      scalingGroupId: (map['scalingGroupId'] as String).input(),
      serverGroupId: (map['serverGroupId'] as String).input(),
      type: (map['type'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

