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
    required this.clusterId,
    required this.subClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'subClusterId': subClusterId,
    };
  }

  factory MembershipAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return MembershipAttachmentArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      subClusterId: pulumi.Input.fromValue(map['subClusterId'] as String),
    );
  }
}
