// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_account_attachment_resource.dart';

/// Input properties used for looking up and filtering CrossAccountAttachment resources.
class CrossAccountAttachmentState {
  /// ARN of the Cross Account Attachment.
  final pulumi.Input<String>? arn;
  /// Creation Time when the Cross Account Attachment.
  final pulumi.Input<String>? createdTime;
  /// Last modified time of the Cross Account Attachment.
  final pulumi.Input<String>? lastModifiedTime;
  /// Name of the Cross Account Attachment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// List of AWS account IDs that are allowed to associate resources with the accelerator.
  final pulumi.Input<List<String>>? principals;
  /// List of resources to be associated with the accelerator.
  final pulumi.Input<List<CrossAccountAttachmentResource>>? resources;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CrossAccountAttachmentState].
  /// [arn] ARN of the Cross Account Attachment.
  /// [createdTime] Creation Time when the Cross Account Attachment.
  /// [lastModifiedTime] Last modified time of the Cross Account Attachment.
  /// [name] Name of the Cross Account Attachment.
  /// [principals] List of AWS account IDs that are allowed to associate resources with the accelerator.
  /// [resources] List of resources to be associated with the accelerator.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const CrossAccountAttachmentState({
    this.arn,
    this.createdTime,
    this.lastModifiedTime,
    this.name,
    this.principals,
    this.resources,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTime': ?createdTime,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'principals': ?principals,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<CrossAccountAttachmentResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<CrossAccountAttachmentResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CrossAccountAttachmentState.fromMap(Map<String, dynamic> map) {
    return CrossAccountAttachmentState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CrossAccountAttachmentResource>(guardedValue, (value) => CrossAccountAttachmentResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
