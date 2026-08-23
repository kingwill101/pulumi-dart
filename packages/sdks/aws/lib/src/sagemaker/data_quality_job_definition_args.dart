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
  /// A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DataQualityJobDefinitionArgs({
    required this.dataQualityAppSpecification,
    this.dataQualityBaselineConfig,
    required this.dataQualityJobInput,
    required this.dataQualityJobOutputConfig,
    required this.jobResources,
    this.name,
    this.networkConfig,
    this.region,
    required this.roleArn,
    this.stoppingCondition,
    this.tags,
  });

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
      dataQualityAppSpecification: pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityAppSpecification.fromMap((map['dataQualityAppSpecification']! as Map).cast<String, dynamic>())),
      dataQualityBaselineConfig: (() { final guardedValue = map['dataQualityBaselineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityBaselineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataQualityJobInput: pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobInput.fromMap((map['dataQualityJobInput']! as Map).cast<String, dynamic>())),
      dataQualityJobOutputConfig: pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap((map['dataQualityJobOutputConfig']! as Map).cast<String, dynamic>())),
      jobResources: pulumi.Input.fromValue(DataQualityJobDefinitionJobResources.fromMap((map['jobResources']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      stoppingCondition: (() { final guardedValue = map['stoppingCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
