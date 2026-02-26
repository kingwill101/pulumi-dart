import 'package:pulumi/pulumi.dart';
import 'error_response3.dart';
import 'execution_args5.dart';
import 'state_error_response.dart';
import 'status_response32.dart';

/// Creates a new execution using the latest revision of the given workflow.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Execution5 extends CustomResource {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  late final Output<String> argument;

  /// The call logging level associated to this execution.
  late final Output<String> callLogLevel;

  /// Measures the duration of the execution.
  late final Output<String> duration;

  /// Marks the end of execution, successful or not.
  late final Output<String> endTime;

  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  late final Output<ErrorResponse3> error;

  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  late final Output<String> name;
  late final Output<String> project;

  /// Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  late final Output<String> result;

  /// Marks the beginning of execution.
  late final Output<String> startTime;

  /// Current state of the execution.
  late final Output<String> state;

  /// Error regarding the state of the Execution resource. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  late final Output<StateErrorResponse> stateError;

  /// Status tracks the current steps and progress data of this execution.
  late final Output<StatusResponse32> status;
  late final Output<String> workflowId;

  /// Revision of the workflow this execution is using.
  late final Output<String> workflowRevisionId;

  Execution5(
    String name, {
    ExecutionArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workflowexecutions/v1:Execution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.argument = registerOutput<String>('argument');
    this.callLogLevel = registerOutput<String>('callLogLevel');
    this.duration = registerOutput<String>('duration');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<ErrorResponse3>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.result = registerOutput<String>('result');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.stateError = registerOutput<StateErrorResponse>('stateError');
    this.status = registerOutput<StatusResponse32>('status');
    this.workflowId = registerOutput<String>('workflowId');
    this.workflowRevisionId = registerOutput<String>('workflowRevisionId');
  }
}
