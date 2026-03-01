// ignore_for_file: unused_element, unnecessary_cast


class InstanceDatabase {
  /// Database character set. Changing this creates a
  /// new instance.
  final String? charset;
  /// Database collation. Changing this creates a new instance.
  final String? collate;
  /// Database to be created on new instance. Changing this creates a
  /// new instance.
  final String name;

  /// Creates a new [InstanceDatabase].
  /// [charset] Database character set. Changing this creates a
  /// [collate] Database collation. Changing this creates a new instance.
  /// [name] Database to be created on new instance. Changing this creates a
  InstanceDatabase({
    this.charset,
    this.collate,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collate': ?collate,
      'name': name,
    };
  }

  factory InstanceDatabase.fromMap(Map<String, dynamic> map) {
    return InstanceDatabase(
      charset: map['charset'] == null ? null : map['charset'] as String,
      collate: map['collate'] == null ? null : map['collate'] as String,
      name: map['name'] as String,
    );
  }
}

