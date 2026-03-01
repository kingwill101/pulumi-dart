// ignore_for_file: unused_element, unnecessary_cast


class OssShipperParquetConfig {
  final String name;
  final String type;

  /// Creates a new [OssShipperParquetConfig].
  /// [name] Required.
  /// [type] Required.
  OssShipperParquetConfig({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory OssShipperParquetConfig.fromMap(Map<String, dynamic> map) {
    return OssShipperParquetConfig(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

