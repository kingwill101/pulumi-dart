import 'package:pulumi/pulumi.dart' as pulumi;
import '../pipeline_definition_parameter_object/pipeline_definition_parameter_object.dart';
import '../pipeline_definition_parameter_value/pipeline_definition_parameter_value.dart';
import '../pipeline_definition_pipeline_object/pipeline_definition_pipeline_object.dart';
import 'pipeline_definition_args.dart';

/// Provides a DataPipeline Pipeline Definition resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datapipeline.PipelineDefinition` using the id. For example:
///
/// ```sh
/// $ pulumi import aws:datapipeline/pipelineDefinition:PipelineDefinition example df-1234567890
/// ```
class PipelineDefinition extends pulumi.CustomResource {
  /// Configuration block for the parameter objects used in the pipeline definition. See below
  late final pulumi.Output<List<PipelineDefinitionParameterObject>?>
      parameterObjects;

  /// Configuration block for the parameter values used in the pipeline definition. See below
  late final pulumi.Output<List<PipelineDefinitionParameterValue>?>
      parameterValues;

  /// ID of the pipeline.
  late final pulumi.Output<String> pipelineId;

  /// Configuration block for the objects that define the pipeline. See below
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<PipelineDefinitionPipelineObject>>
      pipelineObjects;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  PipelineDefinition(
    String name, {
    PipelineDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipelineDefinition:PipelineDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.parameterObjects =
        registerOutput<List<PipelineDefinitionParameterObject>?>(
            'parameterObjects');
    this.parameterValues =
        registerOutput<List<PipelineDefinitionParameterValue>?>(
            'parameterValues');
    this.pipelineId = registerOutput<String>('pipelineId');
    this.pipelineObjects =
        registerOutput<List<PipelineDefinitionPipelineObject>>(
            'pipelineObjects');
    this.region = registerOutput<String>('region');
  }
}
