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
      instanceIds: (() {
        final guardedValue = map['instanceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
