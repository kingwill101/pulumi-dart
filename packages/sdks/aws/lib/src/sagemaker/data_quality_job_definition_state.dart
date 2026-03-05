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
    this.arn,
    this.dataQualityAppSpecification,
    this.dataQualityBaselineConfig,
    this.dataQualityJobInput,
    this.dataQualityJobOutputConfig,
    this.jobResources,
    this.name,
    this.networkConfig,
    this.region,
    this.roleArn,
    this.stoppingCondition,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataQualityAppSpecification: (() { final guardedValue = map['dataQualityAppSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityAppSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataQualityBaselineConfig: (() { final guardedValue = map['dataQualityBaselineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityBaselineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataQualityJobInput: (() { final guardedValue = map['dataQualityJobInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataQualityJobOutputConfig: (() { final guardedValue = map['dataQualityJobOutputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionDataQualityJobOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobResources: (() { final guardedValue = map['jobResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionJobResources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stoppingCondition: (() { final guardedValue = map['stoppingCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataQualityJobDefinitionStoppingCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

