import 'package:pulumi/pulumi.dart';
import 'interval_response.dart';
import 'invocation_config_response.dart';
import 'workflow_invocation_args.dart';

/// Creates a new WorkflowInvocation in a given Repository.
/// Auto-naming is currently not supported for this resource.
class WorkflowInvocation extends CustomResource {
  /// Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  late final Output<String> compilationResult;

  /// Immutable. If left unset, a default InvocationConfig will be used.
  late final Output<InvocationConfigResponse> invocationConfig;

  /// This workflow invocation's timing details.
  late final Output<IntervalResponse> invocationTiming;
  late final Output<String> location;

  /// The workflow invocation's name.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> repositoryId;

  /// The resolved compilation result that was used to create this invocation. Will be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  late final Output<String> resolvedCompilationResult;

  /// This workflow invocation's current state.
  late final Output<String> state;

  /// Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  late final Output<String> workflowConfig;

  WorkflowInvocation(
    String name, {
    WorkflowInvocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:WorkflowInvocation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.compilationResult = registerOutput<String>('compilationResult');
    this.invocationConfig =
        registerOutput<InvocationConfigResponse>('invocationConfig');
    this.invocationTiming =
        registerOutput<IntervalResponse>('invocationTiming');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.resolvedCompilationResult =
        registerOutput<String>('resolvedCompilationResult');
    this.state = registerOutput<String>('state');
    this.workflowConfig = registerOutput<String>('workflowConfig');
  }
}
