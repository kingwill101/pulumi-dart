// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the source resource that this restore point collection is created from.
class RestorePointCollectionSourcePropertiesResponse {
  /// Resource Id of the source resource used to create this restore point collection
  final pulumi.Input<String>? id;
  /// Location of the source resource used to create this restore point collection.
  final pulumi.Input<String> location;

  /// Creates a new [RestorePointCollectionSourcePropertiesResponse].
  /// [id] Resource Id of the source resource used to create this restore point collection
  /// [location] Location of the source resource used to create this restore point collection.
  RestorePointCollectionSourcePropertiesResponse({
    this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': location,
    };
  }

  factory RestorePointCollectionSourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointCollectionSourcePropertiesResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: (map['location'] as String).input(),
    );
  }
}

