// ignore_for_file: unused_element, unnecessary_cast


/// This is used to express the source of an input schema mapping for a single target field in the Event Grid Event schema. This is currently used in the mappings for the 'id', 'topic' and 'eventtime' properties. This represents a field in the input event schema.
class JsonFieldResponse {
  /// Name of a field in the input event schema that's to be used as the source of a mapping.
  final String? sourceField;

  /// Creates a new [JsonFieldResponse].
  /// [sourceField] Name of a field in the input event schema that's to be used as the source of a mapping.
  JsonFieldResponse({
    this.sourceField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceField': ?sourceField,
    };
  }

  factory JsonFieldResponse.fromMap(Map<String, dynamic> map) {
    return JsonFieldResponse(
      sourceField: map['sourceField'] == null ? null : map['sourceField'] as String,
    );
  }
}

