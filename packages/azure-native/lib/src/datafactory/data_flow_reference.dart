// ignore_for_file: unused_element, unnecessary_cast


/// Data flow reference type.
class DataFlowReference {
  /// Reference data flow parameters from dataset.
  final dynamic datasetParameters;
  /// Data flow parameters
  final Map<String, dynamic>? parameters;
  /// Reference data flow name.
  final String referenceName;
  /// Data flow reference type.
  final String type;

  /// Creates a new [DataFlowReference].
  /// [datasetParameters] Reference data flow parameters from dataset.
  /// [parameters] Data flow parameters
  /// [referenceName] Reference data flow name.
  /// [type] Data flow reference type.
  DataFlowReference({
    this.datasetParameters,
    this.parameters,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetParameters': ?datasetParameters,
      'parameters': ?parameters,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory DataFlowReference.fromMap(Map<String, dynamic> map) {
    return DataFlowReference(
      datasetParameters: map['datasetParameters'] == null ? null : map['datasetParameters'],
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, dynamic>(),
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}

