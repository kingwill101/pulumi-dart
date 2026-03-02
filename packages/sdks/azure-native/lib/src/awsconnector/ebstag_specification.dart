// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of EBSTagSpecification
class EBSTagSpecification {
  /// Determines whether to propagate the tags from the task definition to the Amazon EBS volume. Tags can only propagate to a ``SERVICE`` specified in ``ServiceVolumeConfiguration``. If no value is specified, the tags aren't propagated.
  final pulumi.Input<String>? propagateTags;
  /// The type of volume resource.
  final pulumi.Input<String>? resourceType;
  /// The tags applied to this Amazon EBS volume. ``AmazonECSCreated`` and ``AmazonECSManaged`` are reserved tags that can't be used.
  final pulumi.Input<List<Tag>>? tags;

  /// Creates a new [EBSTagSpecification].
  /// [propagateTags] Determines whether to propagate the tags from the task definition to the Amazon EBS volume. Tags can only propagate to a ``SERVICE`` specified in ``ServiceVolumeConfiguration``. If no value is specified, the tags aren't propagated.
  /// [resourceType] The type of volume resource.
  /// [tags] The tags applied to this Amazon EBS volume. ``AmazonECSCreated`` and ``AmazonECSManaged`` are reserved tags that can't be used.
  EBSTagSpecification({
    this.propagateTags,
    this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagateTags': ?propagateTags,
      'resourceType': ?resourceType,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EBSTagSpecification.fromMap(Map<String, dynamic> map) {
    return EBSTagSpecification(
      propagateTags: map['propagateTags'] == null ? null : (map['propagateTags']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

