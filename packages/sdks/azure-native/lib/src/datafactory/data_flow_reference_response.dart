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
      datasetParameters: map['datasetParameters'] == null ? null : (map['datasetParameters']!).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, dynamic>()).input(),
      referenceName: (map['referenceName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

