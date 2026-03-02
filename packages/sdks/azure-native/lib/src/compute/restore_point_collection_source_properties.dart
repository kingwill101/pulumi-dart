// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the source resource that this restore point collection is created from.
class RestorePointCollectionSourceProperties {
  /// Resource Id of the source resource used to create this restore point collection
  final pulumi.Input<String>? id;

  /// Creates a new [RestorePointCollectionSourceProperties].
  /// [id] Resource Id of the source resource used to create this restore point collection
  RestorePointCollectionSourceProperties({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory RestorePointCollectionSourceProperties.fromMap(Map<String, dynamic> map) {
    return RestorePointCollectionSourceProperties(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

