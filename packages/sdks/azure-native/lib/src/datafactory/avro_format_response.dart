// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data stored in Avro format.
class AvroFormatResponse {
  /// Deserializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? deserializer;
  /// Serializer. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? serializer;
  /// Type of dataset storage format.
  /// Expected value is 'AvroFormat'.
  final pulumi.Input<String> type;

  /// Creates a new [AvroFormatResponse].
  /// [deserializer] Deserializer. Type: string (or Expression with resultType string).
  /// [serializer] Serializer. Type: string (or Expression with resultType string).
  /// [type] Type of dataset storage format.
  AvroFormatResponse({
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

  factory AvroFormatResponse.fromMap(Map<String, dynamic> map) {
    return AvroFormatResponse(
      deserializer: map['deserializer'] == null ? null : (map['deserializer']!).input(),
      serializer: map['serializer'] == null ? null : (map['serializer']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

