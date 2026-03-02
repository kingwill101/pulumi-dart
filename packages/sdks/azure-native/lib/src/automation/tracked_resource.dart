// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource model definition for an Azure Resource Manager tracked top level resource which has 'tags' and a 'location'
class TrackedResource {
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TrackedResource].
  /// [location] The geo-location where the resource lives
  /// [tags] Resource tags.
  TrackedResource({
    required this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'tags': ?tags,
    };
  }

  factory TrackedResource.fromMap(Map<String, dynamic> map) {
    return TrackedResource(
      location: (map['location'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

