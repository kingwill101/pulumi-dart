// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OssShipperParquetConfig {
  final pulumi.Input<String> name;
  final pulumi.Input<String> type;

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
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

