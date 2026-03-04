// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'investigation_execution_response.dart';
import 'run_parameters_response.dart';

/// Properties of the current investigation
class InvestigationMetadataResponse {
  /// The creation time of the investigation (in UTC)
  final pulumi.Input<String> createdAt;

  /// The execution details of the investigation
  final pulumi.Input<InvestigationExecutionResponse> execution;

  /// The unique identifier of the investigation
  final pulumi.Input<String> id;

  /// The parameters that were used to start the investigation
  final pulumi.Input<RunParametersResponse> runParameters;

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
      'execution':
          pulumi.Input.mapInputValue<
            InvestigationExecutionResponse,
            Map<String, dynamic>
          >(execution, (value) => value.toMap()),
      'id': id,
      'runParameters':
          pulumi.Input.mapInputValue<
            RunParametersResponse,
            Map<String, dynamic>
          >(runParameters, (value) => value.toMap()),
    };
  }

  factory InvestigationMetadataResponse.fromMap(Map<String, dynamic> map) {
    return InvestigationMetadataResponse(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      execution: pulumi.Input.fromValue(
        InvestigationExecutionResponse.fromMap(
          (map['execution']! as Map).cast<String, dynamic>(),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      runParameters: pulumi.Input.fromValue(
        RunParametersResponse.fromMap(
          (map['runParameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
