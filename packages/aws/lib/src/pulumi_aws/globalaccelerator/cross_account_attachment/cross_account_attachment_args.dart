// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cross_account_attachment_resource/cross_account_attachment_resource.dart';

/// The set of arguments for CrossAccountAttachment.
class CrossAccountAttachmentArgs {
  /// Name of the Cross Account Attachment.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// List of AWS account IDs that are allowed to associate resources with the accelerator.
  final Input<List<String>>? principals;

  /// List of resources to be associated with the accelerator.
  final Input<List<CrossAccountAttachmentResource>>? resources;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['resources'] = Input.mapOptionalInputValue<
              List<CrossAccountAttachmentResource>, List<Map<String, dynamic>>>(
          resourcesValue,
          (value) => Input.encodeList<CrossAccountAttachmentResource,
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
      name: Input.asOptionalInput<String>(map['name']),
      principals: Input.asOptionalInput<List<String>>(map['principals']),
      resources: Input.asOptionalInput<List<CrossAccountAttachmentResource>>(
          map['resources']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
