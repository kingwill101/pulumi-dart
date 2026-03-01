// ignore_for_file: unused_element, unnecessary_cast


/// Schema Reference Properties
class SchemaReferenceProperties {
  /// Schema Id of schema reference
  final String schemaId;

  /// Creates a new [SchemaReferenceProperties].
  /// [schemaId] Schema Id of schema reference
  SchemaReferenceProperties({
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaId': schemaId,
    };
  }

  factory SchemaReferenceProperties.fromMap(Map<String, dynamic> map) {
    return SchemaReferenceProperties(
      schemaId: map['schemaId'] as String,
    );
  }
}

