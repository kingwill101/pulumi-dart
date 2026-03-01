// ignore_for_file: unused_element, unnecessary_cast


/// Key that can be used for joining on enrich.
class DatasetPropertyKey {
  /// Path to the input value from the message.
  final String path;
  /// If true the property will be used as a primary key. At most one primary key can exists.
  final bool? primaryKey;

  /// Creates a new [DatasetPropertyKey].
  /// [path] Path to the input value from the message.
  /// [primaryKey] If true the property will be used as a primary key. At most one primary key can exists.
  DatasetPropertyKey({
    required this.path,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'primaryKey': ?primaryKey,
    };
  }

  factory DatasetPropertyKey.fromMap(Map<String, dynamic> map) {
    return DatasetPropertyKey(
      path: map['path'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as bool,
    );
  }
}

