import 'package:pulumi/pulumi.dart' as pulumi;
import 'append_variable_activity_response.dart';
import 'parameter_specification_response.dart';
import 'pipeline_args.dart';
import 'pipeline_policy_response.dart';
import 'pipeline_response_folder.dart';
import 'variable_specification_response.dart';

/// Pipeline resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
class Pipeline extends pulumi.CustomResource {
  /// List of activities in pipeline.
  late final pulumi.Output<List<AppendVariableActivityResponse>?> activities;
  /// List of tags that can be used for describing the Pipeline.
  late final pulumi.Output<List<dynamic>?> annotations;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The max number of concurrent runs for the pipeline.
  late final pulumi.Output<int?> concurrency;
  /// The description of the pipeline.
  late final pulumi.Output<String?> description;
  /// Etag identifies change in the resource.
  late final pulumi.Output<String> etag;
  /// The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level.
  late final pulumi.Output<PipelineResponseFolder?> folder;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// List of parameters for pipeline.
  late final pulumi.Output<Map<String, ParameterSpecificationResponse>?> parameters;
  /// Pipeline Policy.
  late final pulumi.Output<PipelinePolicyResponse?> policy;
  /// Dimensions emitted by Pipeline.
  late final pulumi.Output<Map<String, dynamic>?> runDimensions;
  /// The resource type.
  late final pulumi.Output<String> type;
  /// List of variables for pipeline.
  late final pulumi.Output<Map<String, VariableSpecificationResponse>?> variables;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_datafactory_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datafactory:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activities = registerOutput<List<AppendVariableActivityResponse>?>('activities');
    this.annotations = registerOutput<List<dynamic>?>('annotations');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.concurrency = registerOutput<int?>('concurrency');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<PipelineResponseFolder?>('folder');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, ParameterSpecificationResponse>?>('parameters');
    this.policy = registerOutput<PipelinePolicyResponse?>('policy');
    this.runDimensions = registerOutput<Map<String, dynamic>?>('runDimensions');
    this.type = registerOutput<String>('type');
    this.variables = registerOutput<Map<String, VariableSpecificationResponse>?>('variables');
  }
}
