// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data flow reference type.
class DataFlowReferenceResponse {
  /// Reference data flow parameters from dataset.
  final pulumi.Input<dynamic>? datasetParameters;
  /// Data flow parameters
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Reference data flow name.
  final pulumi.Input<String> referenceName;
  /// Data flow reference type.
  final pulumi.Input<String> type;

  /// Creates a new [DataFlowReferenceResponse].
  /// [datasetParameters] Reference data flow parameters from dataset.
  /// [parameters] Data flow parameters
  /// [referenceName] Reference data flow name.
  /// [type] Data flow reference type.
  DataFlowReferenceResponse({
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

  factory DataFlowReferenceResponse.fromMap(Map<String, dynamic> map) {
    return DataFlowReferenceResponse(
      datasetParameters: (() { final guardedValue = map['datasetParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

