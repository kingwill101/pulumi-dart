import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_quality_job_definition_data_quality_app_specification/data_quality_job_definition_data_quality_app_specification.dart';
import '../data_quality_job_definition_data_quality_baseline_config/data_quality_job_definition_data_quality_baseline_config.dart';
import '../data_quality_job_definition_data_quality_job_input/data_quality_job_definition_data_quality_job_input.dart';
import '../data_quality_job_definition_data_quality_job_output_config/data_quality_job_definition_data_quality_job_output_config.dart';
import '../data_quality_job_definition_job_resources/data_quality_job_definition_job_resources.dart';
import '../data_quality_job_definition_network_config/data_quality_job_definition_network_config.dart';
import '../data_quality_job_definition_stopping_condition/data_quality_job_definition_stopping_condition.dart';
import 'data_quality_job_definition_args.dart';

/// Provides a SageMaker AI data quality job definition resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import data quality job definitions using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition test_data_quality_job_definition data-quality-job-definition-foo
/// ```
class DataQualityJobDefinition extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this data quality job definition.
  late final pulumi.Output<String> arn;

  /// Specifies the container that runs the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityAppSpecification>
      dataQualityAppSpecification;

  /// Configures the constraints and baselines for the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityBaselineConfig?>
      dataQualityBaselineConfig;

  /// A list of inputs for the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityJobInput>
      dataQualityJobInput;

  /// The output configuration for monitoring jobs. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionDataQualityJobOutputConfig>
      dataQualityJobOutputConfig;

  /// Identifies the resources to deploy for a monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionJobResources> jobResources;

  /// The name of the data quality job definition. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Specifies networking configuration for the monitoring job. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionNetworkConfig?>
      networkConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  late final pulumi.Output<String> roleArn;

  /// A time limit for how long the monitoring job is allowed to run before stopping. Fields are documented below.
  late final pulumi.Output<DataQualityJobDefinitionStoppingCondition>
      stoppingCondition;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DataQualityJobDefinition(
    String name, {
    DataQualityJobDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/dataQualityJobDefinition:DataQualityJobDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataQualityAppSpecification =
        registerOutput<DataQualityJobDefinitionDataQualityAppSpecification>(
            'dataQualityAppSpecification');
    this.dataQualityBaselineConfig =
        registerOutput<DataQualityJobDefinitionDataQualityBaselineConfig?>(
            'dataQualityBaselineConfig');
    this.dataQualityJobInput =
        registerOutput<DataQualityJobDefinitionDataQualityJobInput>(
            'dataQualityJobInput');
    this.dataQualityJobOutputConfig =
        registerOutput<DataQualityJobDefinitionDataQualityJobOutputConfig>(
            'dataQualityJobOutputConfig');
    this.jobResources =
        registerOutput<DataQualityJobDefinitionJobResources>('jobResources');
    this.name = registerOutput<String>('name');
    this.networkConfig =
        registerOutput<DataQualityJobDefinitionNetworkConfig?>('networkConfig');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.stoppingCondition =
        registerOutput<DataQualityJobDefinitionStoppingCondition>(
            'stoppingCondition');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
