// ignore_for_file: unused_element, unnecessary_cast

class SnapshotSettingsStorageLocationLocation {
  /// The identifier for this object. Format specified above.
  final String location;

  /// Name of the location. It should be one of the Cloud Storage buckets.
  /// Only one location can be specified. (should match location)
  final String name;

  /// Creates a new [SnapshotSettingsStorageLocationLocation].
  /// [location] The identifier for this object. Format specified above.
  /// [name] Name of the location. It should be one of the Cloud Storage buckets.
  SnapshotSettingsStorageLocationLocation({
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': location, 'name': name};
  }

  factory SnapshotSettingsStorageLocationLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return SnapshotSettingsStorageLocationLocation(
      location: map['location'] as String,
      name: map['name'] as String,
    );
  }
}
