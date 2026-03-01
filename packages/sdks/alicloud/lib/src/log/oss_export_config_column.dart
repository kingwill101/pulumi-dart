// ignore_for_file: unused_element, unnecessary_cast


class OssExportConfigColumn {
  /// The name of the key.
  final String name;
  /// Type of configuration name.
  final String type;

  /// Creates a new [OssExportConfigColumn].
  /// [name] The name of the key.
  /// [type] Type of configuration name.
  OssExportConfigColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory OssExportConfigColumn.fromMap(Map<String, dynamic> map) {
    return OssExportConfigColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

