// ignore_for_file: unused_element, unnecessary_cast


/// The data stored in Optimized Row Columnar (ORC) format.
class OrcFormat {
  /// Deserializer. Type: string (or Expression with resultType string).
  final dynamic deserializer;
  /// Serializer. Type: string (or Expression with resultType string).
  final dynamic serializer;
  /// Type of dataset storage format.
  /// Expected value is 'OrcFormat'.
  final String type;

  /// Creates a new [OrcFormat].
  /// [deserializer] Deserializer. Type: string (or Expression with resultType string).
  /// [serializer] Serializer. Type: string (or Expression with resultType string).
  /// [type] Type of dataset storage format.
  OrcFormat({
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

  factory OrcFormat.fromMap(Map<String, dynamic> map) {
    return OrcFormat(
      deserializer: map['deserializer'] == null ? null : map['deserializer'],
      serializer: map['serializer'] == null ? null : map['serializer'],
      type: map['type'] as String,
    );
  }
}

