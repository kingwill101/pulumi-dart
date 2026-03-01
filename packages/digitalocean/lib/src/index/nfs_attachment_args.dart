// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_nfs_attachment_nfs_attachment_args_doc}
/// The set of arguments for NfsAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_nfs_attachment_nfs_attachment_args_doc}
class NfsAttachmentArgs {
  final pulumi.Input<String> region;
  /// The ID of the NFS share to attach.
  final pulumi.Input<String> shareId;
  /// The ID of the vpc to attach the NFS share to.
  final pulumi.Input<String> vpcId;

  /// Creates a new [NfsAttachmentArgs].
  /// [region] Required.
  /// [shareId] The ID of the NFS share to attach.
  /// [vpcId] The ID of the vpc to attach the NFS share to.
  NfsAttachmentArgs({
    required String region,
    required String shareId,
    required String vpcId,
  }) :
      region = pulumi.Input.asInput<String>(region),
      shareId = pulumi.Input.asInput<String>(shareId),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'shareId': shareId,
      'vpcId': vpcId,
    };
  }

  factory NfsAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return NfsAttachmentArgs(
      region: map['region'] as String,
      shareId: map['shareId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

