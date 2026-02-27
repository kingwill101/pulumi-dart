// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cross_account_attachment_resource/cross_account_attachment_resource.dart';

/// The set of arguments for CrossAccountAttachment.
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

  CrossAccountAttachmentArgs({
    this.name,
    this.principals,
    this.resources,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final principalsValue = principals;
    if (principalsValue != null) {
      map['principals'] = principalsValue;
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = pulumi.Input.mapOptionalInputValue<
              List<CrossAccountAttachmentResource>, List<Map<String, dynamic>>>(
          resourcesValue,
          (value) => pulumi.Input.encodeList<CrossAccountAttachmentResource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CrossAccountAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return CrossAccountAttachmentArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      principals: pulumi.Input.asOptionalInput<List<String>>(map['principals']),
      resources:
          pulumi.Input.asOptionalInput<List<CrossAccountAttachmentResource>>(
              map['resources']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
