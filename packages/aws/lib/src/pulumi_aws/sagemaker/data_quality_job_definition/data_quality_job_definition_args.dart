// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_quality_job_definition_data_quality_app_specification/data_quality_job_definition_data_quality_app_specification.dart';
import '../data_quality_job_definition_data_quality_baseline_config/data_quality_job_definition_data_quality_baseline_config.dart';
import '../data_quality_job_definition_data_quality_job_input/data_quality_job_definition_data_quality_job_input.dart';
import '../data_quality_job_definition_data_quality_job_output_config/data_quality_job_definition_data_quality_job_output_config.dart';
import '../data_quality_job_definition_job_resources/data_quality_job_definition_job_resources.dart';
import '../data_quality_job_definition_network_config/data_quality_job_definition_network_config.dart';
import '../data_quality_job_definition_stopping_condition/data_quality_job_definition_stopping_condition.dart';

/// The set of arguments for DataQualityJobDefinition.
class DataQualityJobDefinitionArgs {
  /// Specifies the container that runs the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityAppSpecification>
      dataQualityAppSpecification;

  /// Configures the constraints and baselines for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityBaselineConfig>?
      dataQualityBaselineConfig;

  /// A list of inputs for the monitoring job. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobInput>
      dataQualityJobInput;

  /// The output configuration for monitoring jobs. Fields are documented below.
  final pulumi.Input<DataQualityJobDefinitionDataQualityJobOutputConfig>
      dataQualityJobOutputConfig;

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
  final pulumi.Input<DataQualityJobDefinitionStoppingCondition>?
      stoppingCondition;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  DataQualityJobDefinitionArgs({
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
    final map = <String, dynamic>{};
    map['dataQualityAppSpecification'] = pulumi.Input.mapInputValue<
            DataQualityJobDefinitionDataQualityAppSpecification,
            Map<String, dynamic>>(
        dataQualityAppSpecification, (value) => value.toMap());
    final dataQualityBaselineConfigValue = dataQualityBaselineConfig;
    if (dataQualityBaselineConfigValue != null) {
      map['dataQualityBaselineConfig'] = pulumi.Input.mapOptionalInputValue<
              DataQualityJobDefinitionDataQualityBaselineConfig,
              Map<String, dynamic>>(
          dataQualityBaselineConfigValue, (value) => value.toMap());
    }
    map['dataQualityJobInput'] = pulumi.Input.mapInputValue<
        DataQualityJobDefinitionDataQualityJobInput,
        Map<String, dynamic>>(dataQualityJobInput, (value) => value.toMap());
    map['dataQualityJobOutputConfig'] = pulumi.Input.mapInputValue<
            DataQualityJobDefinitionDataQualityJobOutputConfig,
            Map<String, dynamic>>(
        dataQualityJobOutputConfig, (value) => value.toMap());
    map['jobResources'] = pulumi.Input.mapInputValue<
        DataQualityJobDefinitionJobResources,
        Map<String, dynamic>>(jobResources, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          DataQualityJobDefinitionNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final stoppingConditionValue = stoppingCondition;
    if (stoppingConditionValue != null) {
      map['stoppingCondition'] = pulumi.Input.mapOptionalInputValue<
              DataQualityJobDefinitionStoppingCondition, Map<String, dynamic>>(
          stoppingConditionValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DataQualityJobDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionArgs(
      dataQualityAppSpecification: pulumi.Input.asInput<
              DataQualityJobDefinitionDataQualityAppSpecification>(
          map['dataQualityAppSpecification']),
      dataQualityBaselineConfig: pulumi.Input.asOptionalInput<
              DataQualityJobDefinitionDataQualityBaselineConfig>(
          map['dataQualityBaselineConfig']),
      dataQualityJobInput:
          pulumi.Input.asInput<DataQualityJobDefinitionDataQualityJobInput>(
              map['dataQualityJobInput']),
      dataQualityJobOutputConfig: pulumi.Input.asInput<
              DataQualityJobDefinitionDataQualityJobOutputConfig>(
          map['dataQualityJobOutputConfig']),
      jobResources: pulumi.Input.asInput<DataQualityJobDefinitionJobResources>(
          map['jobResources']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfig:
          pulumi.Input.asOptionalInput<DataQualityJobDefinitionNetworkConfig>(
              map['networkConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      stoppingCondition: pulumi.Input.asOptionalInput<
          DataQualityJobDefinitionStoppingCondition>(map['stoppingCondition']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
