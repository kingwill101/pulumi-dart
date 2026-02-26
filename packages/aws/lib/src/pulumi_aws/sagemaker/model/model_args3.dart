// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../model_container/model_container.dart';
import '../model_inference_execution_config/model_inference_execution_config.dart';
import '../model_primary_container/model_primary_container.dart';
import '../model_vpc_config/model_vpc_config.dart';

/// The set of arguments for Model.
class ModelArgs3 {
  /// Specifies containers in the inference pipeline. If not specified, the <span pulumi-lang-nodejs="`primaryContainer`" pulumi-lang-dotnet="`PrimaryContainer`" pulumi-lang-go="`primaryContainer`" pulumi-lang-python="`primary_container`" pulumi-lang-yaml="`primaryContainer`" pulumi-lang-java="`primaryContainer`">`primary_container`</span> argument is required. Fields are documented below.
  final Input<List<ModelContainer>>? containers;

  /// Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
  final Input<bool>? enableNetworkIsolation;

  /// A role that SageMaker AI can assume to access model artifacts and docker images for deployment.
  final Input<String> executionRoleArn;

  /// Specifies details of how containers in a multi-container endpoint are called. See Inference Execution Config.
  final Input<ModelInferenceExecutionConfig>? inferenceExecutionConfig;

  /// Name of the model (must be unique). If omitted, the provider will assign a random, unique name.
  final Input<String>? name;

  /// Primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the <span pulumi-lang-nodejs="`container`" pulumi-lang-dotnet="`Container`" pulumi-lang-go="`container`" pulumi-lang-python="`container`" pulumi-lang-yaml="`container`" pulumi-lang-java="`container`">`container`</span> argument is required. Fields are documented below.
  final Input<ModelPrimaryContainer>? primaryContainer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies the VPC that you want your model to connect to. This configuration is used in hosting services and in batch transform. See VPC Config.
  final Input<ModelVpcConfig>? vpcConfig;

  ModelArgs3({
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
      map['containers'] = Input.mapOptionalInputValue<List<ModelContainer>,
              List<Map<String, dynamic>>>(
          containersValue,
          (value) => Input.encodeList<ModelContainer, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final enableNetworkIsolationValue = enableNetworkIsolation;
    if (enableNetworkIsolationValue != null) {
      map['enableNetworkIsolation'] = enableNetworkIsolationValue;
    }
    map['executionRoleArn'] = executionRoleArn;
    final inferenceExecutionConfigValue = inferenceExecutionConfig;
    if (inferenceExecutionConfigValue != null) {
      map['inferenceExecutionConfig'] = Input.mapOptionalInputValue<
              ModelInferenceExecutionConfig, Map<String, dynamic>>(
          inferenceExecutionConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final primaryContainerValue = primaryContainer;
    if (primaryContainerValue != null) {
      map['primaryContainer'] = Input.mapOptionalInputValue<
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
      map['vpcConfig'] =
          Input.mapOptionalInputValue<ModelVpcConfig, Map<String, dynamic>>(
              vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelArgs3.fromMap(Map<String, dynamic> map) {
    return ModelArgs3(
      containers:
          Input.asOptionalInput<List<ModelContainer>>(map['containers']),
      enableNetworkIsolation:
          Input.asOptionalInput<bool>(map['enableNetworkIsolation']),
      executionRoleArn: Input.asInput<String>(map['executionRoleArn']),
      inferenceExecutionConfig:
          Input.asOptionalInput<ModelInferenceExecutionConfig>(
              map['inferenceExecutionConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      primaryContainer:
          Input.asOptionalInput<ModelPrimaryContainer>(map['primaryContainer']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfig: Input.asOptionalInput<ModelVpcConfig>(map['vpcConfig']),
    );
  }
}
