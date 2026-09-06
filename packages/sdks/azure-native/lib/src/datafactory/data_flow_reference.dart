// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data flow reference type.
class DataFlowReference {
  /// Reference data flow parameters from dataset.
  final pulumi.Input<dynamic>? datasetParameters;
  /// Data flow parameters
  final pulumi.Input<dynamic>? parameters;
  /// Reference data flow name.
  final pulumi.Input<String> referenceName;
  /// Data flow reference type.
  final pulumi.Input<dynamic> type;

  /// Creates a new [DataFlowReference].
  /// [datasetParameters] Reference data flow parameters from dataset.
  /// [parameters] Data flow parameters
  /// [referenceName] Reference data flow name.
  /// [type] Data flow reference type.
  const DataFlowReference({
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
      datasetParameters: (() { final guardedValue = map['datasetParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
