// ignore_for_file: unused_element, unnecessary_cast


/// Storage setting
class StorageSetting {
  /// Gets or sets the type of the datastore.
  final String? datastoreType;
  /// Gets or sets the type.
  final String? type;

  /// Creates a new [StorageSetting].
  /// [datastoreType] Gets or sets the type of the datastore.
  /// [type] Gets or sets the type.
  StorageSetting({
    this.datastoreType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreType': ?datastoreType,
      'type': ?type,
    };
  }

  factory StorageSetting.fromMap(Map<String, dynamic> map) {
    return StorageSetting(
      datastoreType: map['datastoreType'] == null ? null : map['datastoreType'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

