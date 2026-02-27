// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info.dart';
import 'environment_matrix.dart';
import 'result_storage.dart';
import 'test_specification.dart';

/// The set of arguments for TestMatrix.
class TestMatrixArgs {
  /// Information about the client which invoked the test.
  final pulumi.Input<ClientInfo>? clientInfo;

  /// The devices the tests are being executed on.
  final pulumi.Input<EnvironmentMatrix> environmentMatrix;

  /// If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  final pulumi.Input<bool>? failFast;

  /// The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  final pulumi.Input<int>? flakyTestAttempts;

  /// The cloud project that owns the test matrix.
  final pulumi.Input<String>? project;

  /// A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the ID is unique per-project. A UUID is recommended. Optional, but strongly recommended.
  final pulumi.Input<String>? requestId;

  /// Where the results for the matrix are written.
  final pulumi.Input<ResultStorage> resultStorage;

  /// How to run the test.
  final pulumi.Input<TestSpecification> testSpecification;

  TestMatrixArgs({
    this.clientInfo,
    required this.environmentMatrix,
    this.failFast,
    this.flakyTestAttempts,
    this.project,
    this.requestId,
    required this.resultStorage,
    required this.testSpecification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientInfoValue = clientInfo;
    if (clientInfoValue != null) {
      map['clientInfo'] =
          pulumi.Input.mapOptionalInputValue<ClientInfo, Map<String, dynamic>>(
              clientInfoValue, (value) => value.toMap());
    }
    map['environmentMatrix'] =
        pulumi.Input.mapInputValue<EnvironmentMatrix, Map<String, dynamic>>(
            environmentMatrix, (value) => value.toMap());
    final failFastValue = failFast;
    if (failFastValue != null) {
      map['failFast'] = failFastValue;
    }
    final flakyTestAttemptsValue = flakyTestAttempts;
    if (flakyTestAttemptsValue != null) {
      map['flakyTestAttempts'] = flakyTestAttemptsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['resultStorage'] =
        pulumi.Input.mapInputValue<ResultStorage, Map<String, dynamic>>(
            resultStorage, (value) => value.toMap());
    map['testSpecification'] =
        pulumi.Input.mapInputValue<TestSpecification, Map<String, dynamic>>(
            testSpecification, (value) => value.toMap());
    return map;
  }

  factory TestMatrixArgs.fromMap(Map<String, dynamic> map) {
    return TestMatrixArgs(
      clientInfo: pulumi.Input.asOptionalInput<ClientInfo>(map['clientInfo']),
      environmentMatrix:
          pulumi.Input.asInput<EnvironmentMatrix>(map['environmentMatrix']),
      failFast: pulumi.Input.asOptionalInput<bool>(map['failFast']),
      flakyTestAttempts:
          pulumi.Input.asOptionalInput<int>(map['flakyTestAttempts']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      resultStorage: pulumi.Input.asInput<ResultStorage>(map['resultStorage']),
      testSpecification:
          pulumi.Input.asInput<TestSpecification>(map['testSpecification']),
    );
  }
}
