// ignore_for_file: unused_element, unnecessary_cast

class CxToolFunctionSpec {
  /// Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the input of the function.
  /// This input is a JSON object that contains the function's parameters as properties of the object
  final String? inputSchema;

  /// Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the output of the function.
  /// This output is a JSON object that contains the function's parameters as properties of the object
  final String? outputSchema;

  /// Creates a new [CxToolFunctionSpec].
  /// [inputSchema] Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the input of the function.
  /// [outputSchema] Optional. The JSON schema is encapsulated in a [google.protobuf.Struct](https://protobuf.dev/reference/protobuf/google.protobuf/#struct) to describe the output of the function.
  CxToolFunctionSpec({
    this.inputSchema,
    this.outputSchema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputSchemaValue = inputSchema;
    if (inputSchemaValue != null) {
      map['inputSchema'] = inputSchemaValue;
    }
    final outputSchemaValue = outputSchema;
    if (outputSchemaValue != null) {
      map['outputSchema'] = outputSchemaValue;
    }
    return map;
  }

  factory CxToolFunctionSpec.fromMap(Map<String, dynamic> map) {
    return CxToolFunctionSpec(
      inputSchema:
          map['inputSchema'] == null ? null : map['inputSchema'] as String,
      outputSchema:
          map['outputSchema'] == null ? null : map['outputSchema'] as String,
    );
  }
}
