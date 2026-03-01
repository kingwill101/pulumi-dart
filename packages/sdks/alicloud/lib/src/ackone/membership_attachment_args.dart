// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ackone_membership_attachment_membership_attachment_args_doc}
/// The set of arguments for MembershipAttachment.
/// {@endtemplate}
/// {@macro pulumi_ackone_membership_attachment_membership_attachment_args_doc}
class MembershipAttachmentArgs {
  /// The ID of the cluster to which the membership is being attached.
  final pulumi.Input<String> clusterId;
  /// The ID of the member being attached to the cluster.
  final pulumi.Input<String> subClusterId;

  /// Creates a new [MembershipAttachmentArgs].
  /// [clusterId] The ID of the cluster to which the membership is being attached.
  /// [subClusterId] The ID of the member being attached to the cluster.
  MembershipAttachmentArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> subClusterId,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      subClusterId = pulumi.Input.asInput<String>(subClusterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'subClusterId': subClusterId,
    };
  }

  factory MembershipAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return MembershipAttachmentArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      subClusterId: pulumi.Output.create<String>(map['subClusterId'] as String),
    );
  }
}

