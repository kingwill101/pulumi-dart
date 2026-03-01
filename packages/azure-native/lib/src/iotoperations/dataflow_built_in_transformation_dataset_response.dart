// ignore_for_file: unused_element, unnecessary_cast


/// Dataflow BuiltIn Transformation dataset properties
class DataflowBuiltInTransformationDatasetResponse {
  /// A user provided optional description of the dataset.
  final String? description;
  /// Condition to enrich data from Broker State Store. Example: $1 < 0 || $1 > $2 (Assuming inputs section $1 and $2 are provided)
  final String? expression;
  /// List of fields for enriching from the Broker State Store.
  final List<String> inputs;
  /// The key of the dataset.
  final String key;
  /// The reference to the schema that describes the dataset. Allowed: JSON Schema/draft-7.
  final String? schemaRef;

  /// Creates a new [DataflowBuiltInTransformationDatasetResponse].
  /// [description] A user provided optional description of the dataset.
  /// [expression] Condition to enrich data from Broker State Store. Example: $1 < 0 || $1 > $2 (Assuming inputs section $1 and $2 are provided)
  /// [inputs] List of fields for enriching from the Broker State Store.
  /// [key] The key of the dataset.
  /// [schemaRef] The reference to the schema that describes the dataset. Allowed: JSON Schema/draft-7.
  DataflowBuiltInTransformationDatasetResponse({
    this.description,
    this.expression,
    required this.inputs,
    required this.key,
    this.schemaRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': ?expression,
      'inputs': inputs,
      'key': key,
      'schemaRef': ?schemaRef,
    };
  }

  factory DataflowBuiltInTransformationDatasetResponse.fromMap(Map<String, dynamic> map) {
    return DataflowBuiltInTransformationDatasetResponse(
      description: map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] == null ? null : map['expression'] as String,
      inputs: (map['inputs'] as List).cast<String>(),
      key: map['key'] as String,
      schemaRef: map['schemaRef'] == null ? null : map['schemaRef'] as String,
    );
  }
}

