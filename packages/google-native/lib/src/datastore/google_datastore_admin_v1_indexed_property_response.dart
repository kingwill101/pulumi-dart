// ignore_for_file: unused_element, unnecessary_cast

/// A property of an index.
class GoogleDatastoreAdminV1IndexedPropertyResponse {
  /// The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
  final String direction;

  /// The property name to index.
  final String name;

  /// Creates a new [GoogleDatastoreAdminV1IndexedPropertyResponse].
  /// [direction] The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
  /// [name] The property name to index.
  GoogleDatastoreAdminV1IndexedPropertyResponse({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'direction': direction, 'name': name};
  }

  factory GoogleDatastoreAdminV1IndexedPropertyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDatastoreAdminV1IndexedPropertyResponse(
      direction: map['direction'] as String,
      name: map['name'] as String,
    );
  }
}
