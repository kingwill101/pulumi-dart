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
    pulumi.Output<List<String>>? instanceIds,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<String>? outputFile,
  }) :
      instanceIds = pulumi.Input.asOptionalInput<List<String>>(instanceIds),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceIds': ?instanceIds,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachmentsArgs(
      instanceIds: map['instanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['instanceIds'] as List).cast<String>()),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

