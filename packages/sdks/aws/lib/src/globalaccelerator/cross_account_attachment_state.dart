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
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CrossAccountAttachmentState].
  /// [arn] ARN of the Cross Account Attachment.
  /// [createdTime] Creation Time when the Cross Account Attachment.
  /// [lastModifiedTime] Last modified time of the Cross Account Attachment.
  /// [name] Name of the Cross Account Attachment.
  /// [principals] List of AWS account IDs that are allowed to associate resources with the accelerator.
  /// [resources] List of resources to be associated with the accelerator.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CrossAccountAttachmentState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? principals,
    pulumi.Output<List<CrossAccountAttachmentResource>>? resources,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      principals = pulumi.Input.asOptionalInput<List<String>>(principals),
      resources = pulumi.Input.asOptionalInput<List<CrossAccountAttachmentResource>>(resources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principals: map['principals'] == null ? null : pulumi.Output.create<List<String>>((map['principals'] as List).cast<String>()),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<CrossAccountAttachmentResource>>(pulumi.Input.decodeList<CrossAccountAttachmentResource>(map['resources'], (value) => CrossAccountAttachmentResource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

