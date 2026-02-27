// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_container/model_container.dart';
import '../model_inference_execution_config/model_inference_execution_config.dart';
import '../model_primary_container/model_primary_container.dart';
import '../model_vpc_config/model_vpc_config.dart';

/// The set of arguments for Model.
class ModelSagemakerArgs {
  /// Specifies containers in the inference pipeline. If not specified, the `primary_container` argument is required. Fields are documented below.
  final pulumi.Input<List<ModelContainer>>? containers;

  /// Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
  final pulumi.Input<bool>? enableNetworkIsolation;

  /// A role that SageMaker AI can assume to access model artifacts and docker images for deployment.
  final pulumi.Input<String> executionRoleArn;

  /// Specifies details of how containers in a multi-container endpoint are called. See Inference Execution Config.
  final pulumi.Input<ModelInferenceExecutionConfig>? inferenceExecutionConfig;

  /// Name of the model (must be unique). If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;

  /// Primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the `container` argument is required. Fields are documented below.
  final pulumi.Input<ModelPrimaryContainer>? primaryContainer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the VPC that you want your model to connect to. This configuration is used in hosting services and in batch transform. See VPC Config.
  final pulumi.Input<ModelVpcConfig>? vpcConfig;

  ModelSagemakerArgs({
    this.containers,
    this.enableNetworkIsolation,
    required this.executionRoleArn,
    this.inferenceExecutionConfig,
    this.name,
    this.primaryContainer,
    this.region,
    this.tags,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = pulumi.Input.mapOptionalInputValue<
              List<ModelContainer>, List<Map<String, dynamic>>>(
          containersValue,
          (value) =>
              pulumi.Input.encodeList<ModelContainer, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final enableNetworkIsolationValue = enableNetworkIsolation;
    if (enableNetworkIsolationValue != null) {
      map['enableNetworkIsolation'] = enableNetworkIsolationValue;
    }
    map['executionRoleArn'] = executionRoleArn;
    final inferenceExecutionConfigValue = inferenceExecutionConfig;
    if (inferenceExecutionConfigValue != null) {
      map['inferenceExecutionConfig'] = pulumi.Input.mapOptionalInputValue<
              ModelInferenceExecutionConfig, Map<String, dynamic>>(
          inferenceExecutionConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final primaryContainerValue = primaryContainer;
    if (primaryContainerValue != null) {
      map['primaryContainer'] = pulumi.Input.mapOptionalInputValue<
              ModelPrimaryContainer, Map<String, dynamic>>(
          primaryContainerValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = pulumi.Input.mapOptionalInputValue<ModelVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelSagemakerArgs.fromMap(Map<String, dynamic> map) {
    return ModelSagemakerArgs(
      containers:
          pulumi.Input.asOptionalInput<List<ModelContainer>>(map['containers']),
      enableNetworkIsolation:
          pulumi.Input.asOptionalInput<bool>(map['enableNetworkIsolation']),
      executionRoleArn: pulumi.Input.asInput<String>(map['executionRoleArn']),
      inferenceExecutionConfig:
          pulumi.Input.asOptionalInput<ModelInferenceExecutionConfig>(
              map['inferenceExecutionConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      primaryContainer: pulumi.Input.asOptionalInput<ModelPrimaryContainer>(
          map['primaryContainer']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfig: pulumi.Input.asOptionalInput<ModelVpcConfig>(map['vpcConfig']),
    );
  }
}
