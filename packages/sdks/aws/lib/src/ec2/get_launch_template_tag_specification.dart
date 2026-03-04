// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateTagSpecification {
  final pulumi.Input<String> resourceType;

  /// Map of tags, each pair of which must exactly match a pair on the desired Launch Template.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetLaunchTemplateTagSpecification].
  /// [resourceType] Required.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Launch Template.
  GetLaunchTemplateTagSpecification({
    required this.resourceType,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceType': resourceType, 'tags': tags};
  }

  factory GetLaunchTemplateTagSpecification.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateTagSpecification(
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
