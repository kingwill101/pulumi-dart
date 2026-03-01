// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of EBSTagSpecification
class EBSTagSpecificationResponse {
  /// Determines whether to propagate the tags from the task definition to the Amazon EBS volume. Tags can only propagate to a ``SERVICE`` specified in ``ServiceVolumeConfiguration``. If no value is specified, the tags aren't propagated.
  final String? propagateTags;
  /// The type of volume resource.
  final String? resourceType;
  /// The tags applied to this Amazon EBS volume. ``AmazonECSCreated`` and ``AmazonECSManaged`` are reserved tags that can't be used.
  final List<TagResponse>? tags;

  /// Creates a new [EBSTagSpecificationResponse].
  /// [propagateTags] Determines whether to propagate the tags from the task definition to the Amazon EBS volume. Tags can only propagate to a ``SERVICE`` specified in ``ServiceVolumeConfiguration``. If no value is specified, the tags aren't propagated.
  /// [resourceType] The type of volume resource.
  /// [tags] The tags applied to this Amazon EBS volume. ``AmazonECSCreated`` and ``AmazonECSManaged`` are reserved tags that can't be used.
  EBSTagSpecificationResponse({
    this.propagateTags,
    this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagateTags': ?propagateTags,
      'resourceType': ?resourceType,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory EBSTagSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return EBSTagSpecificationResponse(
      propagateTags: map['propagateTags'] == null ? null : map['propagateTags'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

