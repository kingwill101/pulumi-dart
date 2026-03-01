import 'package:pulumi/pulumi.dart' as pulumi;
import 'interval_response.dart';
import 'invocation_config_response.dart';
import 'workflow_invocation_args.dart';

/// Creates a new WorkflowInvocation in a given Repository.
/// Auto-naming is currently not supported for this resource.
class WorkflowInvocation extends pulumi.CustomResource {
  /// Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  late final pulumi.Output<String> compilationResult;

  /// Immutable. If left unset, a default InvocationConfig will be used.
  late final pulumi.Output<InvocationConfigResponse> invocationConfig;

  /// This workflow invocation's timing details.
  late final pulumi.Output<IntervalResponse> invocationTiming;
  late final pulumi.Output<String> location;

  /// The workflow invocation's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> repositoryId;

  /// The resolved compilation result that was used to create this invocation. Will be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  late final pulumi.Output<String> resolvedCompilationResult;

  /// This workflow invocation's current state.
  late final pulumi.Output<String> state;

  /// Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  late final pulumi.Output<String> workflowConfig;

  /// Creates a new [WorkflowInvocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkflowInvocation]. {@macro pulumi_dataform_v1beta1_workflow_invocation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkflowInvocation(
    String name, {
    WorkflowInvocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataform/v1beta1:WorkflowInvocation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.compilationResult = registerOutput<String>('compilationResult');
    this.invocationConfig = registerOutput<InvocationConfigResponse>(
      'invocationConfig',
    );
    this.invocationTiming = registerOutput<IntervalResponse>(
      'invocationTiming',
    );
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.resolvedCompilationResult = registerOutput<String>(
      'resolvedCompilationResult',
    );
    this.state = registerOutput<String>('state');
    this.workflowConfig = registerOutput<String>('workflowConfig');
  }
}
