import 'package:pulumi/pulumi.dart' hide Config;
import 'error_response4.dart';
import 'execution_args6.dart';
import 'status_response33.dart';

/// Creates a new execution using the latest revision of the given workflow.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Execution6 extends CustomResource {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  late final Output<String> argument;

  /// The call logging level associated to this execution.
  late final Output<String> callLogLevel;

  /// Marks the end of execution, successful or not.
  late final Output<String> endTime;

  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  late final Output<ErrorResponse4> error;
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

  /// Status tracks the current steps and progress data of this execution.
  late final Output<StatusResponse33> status;
  late final Output<String> workflowId;

  /// Revision of the workflow this execution is using.
  late final Output<String> workflowRevisionId;

  Execution6(
    String name, {
    ExecutionArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:workflowexecutions/v1beta:Execution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.argument = registerOutput<String>('argument');
    this.callLogLevel = registerOutput<String>('callLogLevel');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<ErrorResponse4>('error');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.result = registerOutput<String>('result');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<StatusResponse33>('status');
    this.workflowId = registerOutput<String>('workflowId');
    this.workflowRevisionId = registerOutput<String>('workflowRevisionId');
  }
}
