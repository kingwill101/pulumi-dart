// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data stored in Parquet format.
class ParquetFormat {
  /// Deserializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? deserializer;
  /// Serializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? serializer;
  /// Type of dataset storage format.
  /// Expected value is 'ParquetFormat'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetFormat].
  /// [deserializer] Deserializer. Type: string (or Expression with resultType string).
  /// [serializer] Serializer. Type: string (or Expression with resultType string).
  /// [type] Type of dataset storage format.
  ParquetFormat({
    this.deserializer,
    this.serializer,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deserializer': ?deserializer,
      'serializer': ?serializer,
      'type': type,
    };
  }

  factory ParquetFormat.fromMap(Map<String, dynamic> map) {
    return ParquetFormat(
      deserializer: map['deserializer'] == null ? null : (map['deserializer']!).input(),
      serializer: map['serializer'] == null ? null : (map['serializer']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

