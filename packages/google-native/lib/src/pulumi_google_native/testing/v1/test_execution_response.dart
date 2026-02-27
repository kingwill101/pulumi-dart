// ignore_for_file: unused_element, unnecessary_cast

import 'environment_response_testing_v1.dart';
import 'shard_response.dart';
import 'test_details_response.dart';
import 'test_specification_response.dart';
import 'tool_results_step_response.dart';

/// A single test executed in a single environment.
class TestExecutionResponse {
  /// How the host machine(s) are configured.
  final EnvironmentResponseTestingV1 environment;

  /// Id of the containing TestMatrix.
  final String matrixId;

  /// The cloud project that owns the test execution.
  final String project;

  /// Details about the shard.
  final ShardResponse shard;

  /// Indicates the current progress of the test execution (e.g., FINISHED).
  final String state;

  /// Additional details about the running test.
  final TestDetailsResponse testDetails;

  /// How to run the test.
  final TestSpecificationResponse testSpecification;

  /// The time this test execution was initially created.
  final String timestamp;

  /// Where the results for this execution are written.
  final ToolResultsStepResponse toolResultsStep;

  TestExecutionResponse({
    required this.environment,
    required this.matrixId,
    required this.project,
    required this.shard,
    required this.state,
    required this.testDetails,
    required this.testSpecification,
    required this.timestamp,
    required this.toolResultsStep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environment'] = environment.toMap();
    map['matrixId'] = matrixId;
    map['project'] = project;
    map['shard'] = shard.toMap();
    map['state'] = state;
    map['testDetails'] = testDetails.toMap();
    map['testSpecification'] = testSpecification.toMap();
    map['timestamp'] = timestamp;
    map['toolResultsStep'] = toolResultsStep.toMap();
    return map;
  }

  factory TestExecutionResponse.fromMap(Map<String, dynamic> map) {
    return TestExecutionResponse(
      environment: EnvironmentResponseTestingV1.fromMap(
          (map['environment'] as Map).cast<String, dynamic>()),
      matrixId: map['matrixId'] as String,
      project: map['project'] as String,
      shard:
          ShardResponse.fromMap((map['shard'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      testDetails: TestDetailsResponse.fromMap(
          (map['testDetails'] as Map).cast<String, dynamic>()),
      testSpecification: TestSpecificationResponse.fromMap(
          (map['testSpecification'] as Map).cast<String, dynamic>()),
      timestamp: map['timestamp'] as String,
      toolResultsStep: ToolResultsStepResponse.fromMap(
          (map['toolResultsStep'] as Map).cast<String, dynamic>()),
    );
  }
}
