// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_attachments_get_attachments_args_doc}
/// Arguments for getAttachments.
/// {@endtemplate}
/// {@macro pulumi_slb_get_attachments_get_attachments_args_doc}
class GetAttachmentsArgs {
  /// List of attached ECS instance IDs.
  final pulumi.Input<List<String>>? instanceIds;
  /// ID of the SLB with attachments.
  final pulumi.Input<String> loadBalancerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAttachmentsArgs].
  /// [instanceIds] List of attached ECS instance IDs.
  /// [loadBalancerId] ID of the SLB with attachments.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAttachmentsArgs({
    this.instanceIds,
    required this.loadBalancerId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceIds': ?instanceIds,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsArgs(
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds'] as List).cast<String>()).input(),
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

