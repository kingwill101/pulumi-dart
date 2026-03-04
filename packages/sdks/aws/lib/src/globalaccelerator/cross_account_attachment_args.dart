// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_account_attachment_resource.dart';

/// {@template pulumi_globalaccelerator_cross_account_attachment_cross_account_attachment_args_doc}
/// The set of arguments for CrossAccountAttachment.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_cross_account_attachment_cross_account_attachment_args_doc}
class CrossAccountAttachmentArgs {
  /// Name of the Cross Account Attachment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// List of AWS account IDs that are allowed to associate resources with the accelerator.
  final pulumi.Input<List<String>>? principals;

  /// List of resources to be associated with the accelerator.
  final pulumi.Input<List<CrossAccountAttachmentResource>>? resources;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CrossAccountAttachmentArgs].
  /// [name] Name of the Cross Account Attachment.
  /// [principals] List of AWS account IDs that are allowed to associate resources with the accelerator.
  /// [resources] List of resources to be associated with the accelerator.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CrossAccountAttachmentArgs({
    this.name,
    this.principals,
    this.resources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'principals': ?principals,
      'resources':
          ?pulumi.Input.mapOptionalInputValue<
            List<CrossAccountAttachmentResource>,
            List<Map<String, dynamic>>
          >(
            resources,
            (value) =>
                pulumi.Input.encodeList<
                  CrossAccountAttachmentResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
    };
  }

  factory CrossAccountAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return CrossAccountAttachmentArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principals: (() {
        final guardedValue = map['principals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CrossAccountAttachmentResource>(
            guardedValue,
            (value) => CrossAccountAttachmentResource.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
