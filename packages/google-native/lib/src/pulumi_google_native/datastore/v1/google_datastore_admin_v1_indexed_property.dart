// ignore_for_file: unused_element, unnecessary_cast

import 'google_datastore_admin_v1_indexed_property_direction.dart';

/// A property of an index.
class GoogleDatastoreAdminV1IndexedProperty {
  /// The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
  final GoogleDatastoreAdminV1IndexedPropertyDirection direction;

  /// The property name to index.
  final String name;

  GoogleDatastoreAdminV1IndexedProperty({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['direction'] = direction.value;
    map['name'] = name;
    return map;
  }

  factory GoogleDatastoreAdminV1IndexedProperty.fromMap(
      Map<String, dynamic> map) {
    return GoogleDatastoreAdminV1IndexedProperty(
      direction: GoogleDatastoreAdminV1IndexedPropertyDirection.fromValue(
          map['direction'] as String),
      name: map['name'] as String,
    );
  }
}
