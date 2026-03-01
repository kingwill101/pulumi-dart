// ignore_for_file: unused_element, unnecessary_cast


/// Column transformer parameters.
class ColumnTransformerResponse {
  /// Fields to apply transformer logic on.
  final List<String>? fields;
  /// Different properties to be passed to transformer.
  /// Input expected is dictionary of key,value pairs in JSON format.
  final dynamic parameters;

  /// Creates a new [ColumnTransformerResponse].
  /// [fields] Fields to apply transformer logic on.
  /// [parameters] Different properties to be passed to transformer.
  ColumnTransformerResponse({
    this.fields,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields,
      'parameters': ?parameters,
    };
  }

  factory ColumnTransformerResponse.fromMap(Map<String, dynamic> map) {
    return ColumnTransformerResponse(
      fields: map['fields'] == null ? null : (map['fields'] as List).cast<String>(),
      parameters: map['parameters'] == null ? null : map['parameters'],
    );
  }
}

