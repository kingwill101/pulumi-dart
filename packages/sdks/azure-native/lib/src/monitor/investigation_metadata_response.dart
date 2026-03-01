// ignore_for_file: unused_element, unnecessary_cast

import 'investigation_execution_response.dart';
import 'run_parameters_response.dart';

/// Properties of the current investigation
class InvestigationMetadataResponse {
  /// The creation time of the investigation (in UTC)
  final String createdAt;
  /// The execution details of the investigation
  final InvestigationExecutionResponse execution;
  /// The unique identifier of the investigation
  final String id;
  /// The parameters that were used to start the investigation
  final RunParametersResponse runParameters;

  /// Creates a new [InvestigationMetadataResponse].
  /// [createdAt] The creation time of the investigation (in UTC)
  /// [execution] The execution details of the investigation
  /// [id] The unique identifier of the investigation
  /// [runParameters] The parameters that were used to start the investigation
  InvestigationMetadataResponse({
    required this.createdAt,
    required this.execution,
    required this.id,
    required this.runParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'execution': execution.toMap(),
      'id': id,
      'runParameters': runParameters.toMap(),
    };
  }

  factory InvestigationMetadataResponse.fromMap(Map<String, dynamic> map) {
    return InvestigationMetadataResponse(
      createdAt: map['createdAt'] as String,
      execution: InvestigationExecutionResponse.fromMap((map['execution'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      runParameters: RunParametersResponse.fromMap((map['runParameters'] as Map).cast<String, dynamic>()),
    );
  }
}

