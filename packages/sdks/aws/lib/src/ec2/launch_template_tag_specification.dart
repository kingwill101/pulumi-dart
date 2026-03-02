// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateTagSpecification {
  /// The type of resource to tag.
  final pulumi.Input<String>? resourceType;
  /// A map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LaunchTemplateTagSpecification].
  /// [resourceType] The type of resource to tag.
  /// [tags] A map of tags to assign to the resource.
  LaunchTemplateTagSpecification({
    this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceType': ?resourceType,
      'tags': ?tags,
    };
  }

  factory LaunchTemplateTagSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateTagSpecification(
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

