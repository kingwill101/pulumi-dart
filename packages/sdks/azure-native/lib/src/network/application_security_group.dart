// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An application security group in a resource group.
class ApplicationSecurityGroup {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationSecurityGroup].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [tags] Resource tags.
  ApplicationSecurityGroup({
    this.id,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'tags': ?tags,
    };
  }

  factory ApplicationSecurityGroup.fromMap(Map<String, dynamic> map) {
    return ApplicationSecurityGroup(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

