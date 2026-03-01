// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_quality_job_definition_data_quality_app_specification.dart';
import 'data_quality_job_definition_data_quality_baseline_config.dart';
import 'data_quality_job_definition_data_quality_job_input.dart';
import 'data_quality_job_definition_data_quality_job_output_config.dart';
import 'data_quality_job_definition_job_resources.dart';
import 'data_quality_job_definition_network_config.dart';
import 'data_quality_job_definition_stopping_condition.dart';

/// Input properties used for looking up and filtering DataQualityJobDefinition resources.
class DataQualityJobDefinitionState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this data quality job definition.
  final pulumi.Input<String>? arn;
  /// Specifies the container that runs the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityAppSpecification>? dataQualityAppSpecification;
  /// Configures the constraints and baselines for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityBaselineConfig>? dataQualityBaselineConfig;
  /// A list of inputs for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInput>? dataQualityJobInput;
  /// The output configuration for monitoring jobs. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobOutputConfig>? dataQualityJobOutputConfig;
  /// Identifies the resources to deploy for a monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionJobResources>? jobResources;
  /// The name of the data quality job definition. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Specifies networking configuration for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionNetworkConfig>? networkConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  final pulumi.Input<String>? roleArn;
  /// A time limit for how long the monitoring job is allowed to run before stopping. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionStoppingCondition>? stoppingCondition;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DataQualityJobDefinitionState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this data quality job definition.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DataQualityJobDefinitionState({
    pulumi.Output<String>? arn,
    pulumi.Output<DataQualityJobDefinitionDataQualityAppSpecification>? dataQualityAppSpecification,
    pulumi.Output<DataQualityJobDefinitionDataQualityBaselineConfig>? dataQualityBaselineConfig,
    pulumi.Output<DataQualityJobDefinitionDataQualityJobInput>? dataQualityJobInput,
    pulumi.Output<DataQualityJobDefinitionDataQualityJobOutputConfig>? dataQualityJobOutputConfig,
    pulumi.Output<DataQualityJobDefinitionJobResources>? jobResources,
    pulumi.Output<String>? name,
    pulumi.Output<DataQualityJobDefinitionNetworkConfig>? networkConfig,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<DataQualityJobDefinitionStoppingCondition>? stoppingCondition,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dataQualityAppSpecification = pulumi.Input.asOptionalInput<DataQualityJobDefinitionDataQualityAppSpecification>(dataQualityAppSpecification),
      dataQualityBaselineConfig = pulumi.Input.asOptionalInput<DataQualityJobDefinitionDataQualityBaselineConfig>(dataQualityBaselineConfig),
      dataQualityJobInput = pulumi.Input.asOptionalInput<DataQualityJobDefinitionDataQualityJobInput>(dataQualityJobInput),
      dataQualityJobOutputConfig = pulumi.Input.asOptionalInput<DataQualityJobDefinitionDataQualityJobOutputConfig>(dataQualityJobOutputConfig),
      jobResources = pulumi.Input.asOptionalInput<DataQualityJobDefinitionJobResources>(jobResources),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<DataQualityJobDefinitionNetworkConfig>(networkConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      stoppingCondition = pulumi.Input.asOptionalInput<DataQualityJobDefinitionStoppingCondition>(stoppingCondition),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dataQualityAppSpecification': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityAppSpecification, Map<String, dynamic>>(dataQualityAppSpecification, (value) => value.toMap()),
      'dataQualityBaselineConfig': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityBaselineConfig, Map<String, dynamic>>(dataQualityBaselineConfig, (value) => value.toMap()),
      'dataQualityJobInput': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityJobInput, Map<String, dynamic>>(dataQualityJobInput, (value) => value.toMap()),
      'dataQualityJobOutputConfig': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionDataQualityJobOutputConfig, Map<String, dynamic>>(dataQualityJobOutputConfig, (value) => value.toMap()),
      'jobResources': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionJobResources, Map<String, dynamic>>(jobResources, (value) => value.toMap()),
      'name': ?name,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'stoppingCondition': ?pulumi.Input.mapOptionalInputValue<DataQualityJobDefinitionStoppingCondition, Map<String, dynamic>>(stoppingCondition, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DataQualityJobDefinitionState.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dataQualityAppSpecification: map['dataQualityAppSpecification'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionDataQualityAppSpecification>(DataQualityJobDefinitionDataQualityAppSpecification.fromMap((map['dataQualityAppSpecification'] as Map).cast<String, dynamic>())),
      dataQualityBaselineConfig: map['dataQualityBaselineConfig'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionDataQualityBaselineConfig>(DataQualityJobDefinitionDataQualityBaselineConfig.fromMap((map['dataQualityBaselineConfig'] as Map).cast<String, dynamic>())),
      dataQualityJobInput: map['dataQualityJobInput'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionDataQualityJobInput>(DataQualityJobDefinitionDataQualityJobInput.fromMap((map['dataQualityJobInput'] as Map).cast<String, dynamic>())),
      dataQualityJobOutputConfig: map['dataQualityJobOutputConfig'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionDataQualityJobOutputConfig>(DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap((map['dataQualityJobOutputConfig'] as Map).cast<String, dynamic>())),
      jobResources: map['jobResources'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionJobResources>(DataQualityJobDefinitionJobResources.fromMap((map['jobResources'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionNetworkConfig>(DataQualityJobDefinitionNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      stoppingCondition: map['stoppingCondition'] == null ? null : pulumi.Output.create<DataQualityJobDefinitionStoppingCondition>(DataQualityJobDefinitionStoppingCondition.fromMap((map['stoppingCondition'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

