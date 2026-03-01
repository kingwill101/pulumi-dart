// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_app_specification.dart';
import 'data_quality_job_definition_data_quality_baseline_config.dart';
import 'data_quality_job_definition_data_quality_job_input.dart';
import 'data_quality_job_definition_data_quality_job_output_config.dart';
import 'data_quality_job_definition_job_resources.dart';
import 'data_quality_job_definition_network_config.dart';
import 'data_quality_job_definition_stopping_condition.dart';

/// {@template pulumi_sagemaker_data_quality_job_definition_data_quality_job_definition_args_doc}
/// The set of arguments for DataQualityJobDefinition.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_data_quality_job_definition_data_quality_job_definition_args_doc}
class DataQualityJobDefinitionArgs {
  /// Specifies the container that runs the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityAppSpecification> dataQualityAppSpecification;
  /// Configures the constraints and baselines for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityBaselineConfig>? dataQualityBaselineConfig;
  /// A list of inputs for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInput> dataQualityJobInput;
  /// The output configuration for monitoring jobs. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobOutputConfig> dataQualityJobOutputConfig;
  /// Identifies the resources to deploy for a monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionJobResources> jobResources;
  /// The name of the data quality job definition. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Specifies networking configuration for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionNetworkConfig>? networkConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  final pulumi.Input<String> roleArn;
  /// A time limit for how long the monitoring job is allowed to run before stopping. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionStoppingCondition>? stoppingCondition;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataQualityJobDefinitionArgs].
  /// [dataQualityAppSpecification] Specifies the container that runs the monitoring job. Fields are documented below.
  /// [dataQualityBaselineConfig] Configures the constraints and baselines for the monitoring job. Fields are documented below.
  /// [dataQualityJobInput] A list of inputs for the monitoring job. Fields are documented below.
  /// [dataQualityJobOutputConfig] The output configuration for monitoring jobs. Fields are documented below.
  /// [jobResources] Identifies the resources to deploy for a monitoring job. Fields are documented below.
  /// [name] The name of the data quality job definition. If omitted, the provider will assign a random, unique name.
  /// [networkConfig] Specifies networking configuration for the monitoring job. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  /// [stoppingCondition] A time limit for how long the monitoring job is allowed to run before stopping. Fields are documented below.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DataQualityJobDefinitionArgs({
    required pulumi.Output<DataQualityJobDefinitionDataQualityAppSpecification> dataQualityAppSpecification,
    pulumi.Output<DataQualityJobDefinitionDataQualityBaselineConfig>? dataQualityBaselineConfig,
    required pulumi.Output<DataQualityJobDefinitionDataQualityJobInput> dataQualityJobInput,
    required pulumi.Output<DataQualityJobDefinitionDataQualityJobOutputConfig> dataQualityJobOutputConfig,
    required pulumi.Output<DataQualityJobDefinitionJobResources> jobResources,
    pulumi.Output<String>? name,
    pulumi.Output<DataQualityJobDefinitionNetworkConfig>? networkConfig,
    pulumi.Output<String>? region,
    required pulumi.Output<String> roleArn,
    pulumi.Output<DataQualityJobDefinitionStoppingCondition>? stoppingCondition,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataQualityAppSpecification = pulumi.Input.asInput<DataQualityJobDefinitionDataQualityAppSpecification>(dataQualityAppSpecification),
      dataQualityBaselineConfig = pulumi.Input.asOptionalInput<DataQualityJobDefinitionDataQualityBaselineConfig>(dataQualityBaselineConfig),
      dataQualityJobInput = pulumi.Input.asInput<DataQualityJobDefinitionDataQualityJobInput>(dataQualityJobInput),
      dataQualityJobOutputConfig = pulumi.Input.asInput<DataQualityJobDefinitionDataQualityJobOutputConfig>(dataQualityJobOutputConfig),
      jobResources = pulumi.Input.asInput<DataQualityJobDefinitionJobResources>(jobResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<DataQualityJobDefinitionNetworkConfig>(networkConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      stoppingCondition = pulumi.Input.asOptionalInput<DataQualityJobDefinitionStoppingCondition>(stoppingCondition),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataQualityAppSpecification': pulumi.Input.mapInputValue<DataQualityJobDefinitionDataQualityAppSpecification, Map<String, dynamic>>(dataQualityAppSpecification, (value) => value.toMap()),
      'dataQualityBaselineConfig': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityBaselineConfig, Map<String, dynamic>>(dataQualityBaselineConfig, (value) => value.toMap()),
      'dataQualityJobInput': pulumi.Input.mapInputValue<DataQualityJobDefinitionDataQualityJobInput, Map<String, dynamic>>(dataQualityJobInput, (value) => value.toMap()),
      'dataQualityJobOutputConfig': pulumi.Input.mapInputValue<DataQualityJobDefinitionDataQualityJobOutputConfig, Map<String, dynamic>>(dataQualityJobOutputConfig, (value) => value.toMap()),
      'jobResources': pulumi.Input.mapInputValue<DataQualityJobDefinitionJobResources, Map<String, dynamic>>(jobResources, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'stoppingCondition': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionStoppingCondition, Map<String, dynamic>>(stoppingCondition, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DataQualityJobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionArgs(
      dataQualityAppSpecification: pulumi.Output.create<DataQualityJobDefinitionDataQualityAppSpecification>(DataQualityJobDefinitionDataQualityAppSpecification.fromMap((map['dataQualityAppSpecification'] as Map).cast<String, dynamic>())),
      dataQualityBaselineConfig: map['dataQualityBaselineConfig'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionDataQualityBaselineConfig>(DataQualityJobDefinitionDataQualityBaselineConfig.fromMap((map['dataQualityBaselineConfig'] as Map).cast<String, dynamic>())),
      dataQualityJobInput: pulumi.Output.create<DataQualityJobDefinitionDataQualityJobInput>(DataQualityJobDefinitionDataQualityJobInput.fromMap((map['dataQualityJobInput'] as Map).cast<String, dynamic>())),
      dataQualityJobOutputConfig: pulumi.Output.create<DataQualityJobDefinitionDataQualityJobOutputConfig>(DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap((map['dataQualityJobOutputConfig'] as Map).cast<String, dynamic>())),
      jobResources: pulumi.Output.create<DataQualityJobDefinitionJobResources>(DataQualityJobDefinitionJobResources.fromMap((map['jobResources'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionNetworkConfig>(DataQualityJobDefinitionNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      stoppingCondition: map['stoppingCondition'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionStoppingCondition>(DataQualityJobDefinitionStoppingCondition.fromMap((map['stoppingCondition'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

