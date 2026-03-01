import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_info_response.dart';
import 'environment_matrix_response.dart';
import 'result_storage_response.dart';
import 'test_execution_response.dart';
import 'test_matrix_args.dart';
import 'test_specification_response.dart';

/// Creates and runs a matrix of tests according to the given specifications. Unsupported environments will be returned in the state UNSUPPORTED. A test matrix is limited to use at most 2000 devices in parallel. The returned matrix will not yet contain the executions that will be created for this matrix. Execution creation happens later on and will require a call to GetTestMatrix. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed or if the matrix tries to use too many simultaneous devices.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class TestMatrix extends pulumi.CustomResource {
  /// Information about the client which invoked the test.
  late final pulumi.Output<ClientInfoResponse> clientInfo;

  /// The devices the tests are being executed on.
  late final pulumi.Output<EnvironmentMatrixResponse> environmentMatrix;

  /// If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.
  late final pulumi.Output<bool> failFast;

  /// The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.
  late final pulumi.Output<int> flakyTestAttempts;

  /// Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.
  late final pulumi.Output<String> invalidMatrixDetails;

  /// Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.
  late final pulumi.Output<String> outcomeSummary;
  late final pulumi.Output<String> project;

  /// A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the ID is unique per-project. A UUID is recommended. Optional, but strongly recommended.
  late final pulumi.Output<String?> requestId;

  /// Where the results for the matrix are written.
  late final pulumi.Output<ResultStorageResponse> resultStorage;

  /// Indicates the current progress of the test matrix.
  late final pulumi.Output<String> state;

  /// The list of test executions that the service creates for this matrix.
  late final pulumi.Output<List<TestExecutionResponse>> testExecutions;

  /// Unique id set by the service.
  late final pulumi.Output<String> testMatrixId;

  /// How to run the test.
  late final pulumi.Output<TestSpecificationResponse> testSpecification;

  /// The time this test matrix was initially created.
  late final pulumi.Output<String> timestamp;

  /// Creates a new [TestMatrix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TestMatrix]. {@macro pulumi_testing_v1_test_matrix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TestMatrix(
    String name, {
    TestMatrixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:testing/v1:TestMatrix',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.clientInfo = registerOutput<ClientInfoResponse>('clientInfo');
    this.environmentMatrix = registerOutput<EnvironmentMatrixResponse>(
      'environmentMatrix',
    );
    this.failFast = registerOutput<bool>('failFast');
    this.flakyTestAttempts = registerOutput<int>('flakyTestAttempts');
    this.invalidMatrixDetails = registerOutput<String>('invalidMatrixDetails');
    this.outcomeSummary = registerOutput<String>('outcomeSummary');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.resultStorage = registerOutput<ResultStorageResponse>('resultStorage');
    this.state = registerOutput<String>('state');
    this.testExecutions = registerOutput<List<TestExecutionResponse>>(
      'testExecutions',
    );
    this.testMatrixId = registerOutput<String>('testMatrixId');
    this.testSpecification = registerOutput<TestSpecificationResponse>(
      'testSpecification',
    );
    this.timestamp = registerOutput<String>('timestamp');
  }
}
