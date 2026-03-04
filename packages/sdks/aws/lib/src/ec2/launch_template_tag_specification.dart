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
  LaunchTemplateTagSpecification({this.resourceType, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceType': ?resourceType, 'tags': ?tags};
  }

  factory LaunchTemplateTagSpecification.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateTagSpecification(
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
