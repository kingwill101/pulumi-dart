// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container.dart';
import 'model_inference_execution_config.dart';
import 'model_primary_container.dart';
import 'model_vpc_config.dart';

/// {@template pulumi_sagemaker_model_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_model_model_args_doc}
class ModelArgs {
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

  /// Creates a new [ModelArgs].
  /// [containers] Specifies containers in the inference pipeline. If not specified, the `primary_container` argument is required. Fields are documented below.
  /// [enableNetworkIsolation] Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
  /// [executionRoleArn] A role that SageMaker AI can assume to access model artifacts and docker images for deployment.
  /// [inferenceExecutionConfig] Specifies details of how containers in a multi-container endpoint are called. See Inference Execution Config.
  /// [name] Name of the model (must be unique). If omitted, the provider will assign a random, unique name.
  /// [primaryContainer] Primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the `container` argument is required. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConfig] Specifies the VPC that you want your model to connect to. This configuration is used in hosting services and in batch transform. See VPC Config.
  ModelArgs({
    List<ModelContainer>? containers,
    bool? enableNetworkIsolation,
    required String executionRoleArn,
    ModelInferenceExecutionConfig? inferenceExecutionConfig,
    String? name,
    ModelPrimaryContainer? primaryContainer,
    String? region,
    Map<String, String>? tags,
    ModelVpcConfig? vpcConfig,
  }) :
      containers = pulumi.Input.asOptionalInput<List<ModelContainer>>(containers),
      enableNetworkIsolation = pulumi.Input.asOptionalInput<bool>(enableNetworkIsolation),
      executionRoleArn = pulumi.Input.asInput<String>(executionRoleArn),
      inferenceExecutionConfig = pulumi.Input.asOptionalInput<ModelInferenceExecutionConfig>(inferenceExecutionConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryContainer = pulumi.Input.asOptionalInput<ModelPrimaryContainer>(primaryContainer),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcConfig = pulumi.Input.asOptionalInput<ModelVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ModelContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ModelContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableNetworkIsolation': ?enableNetworkIsolation,
      'executionRoleArn': executionRoleArn,
      'inferenceExecutionConfig': ?pulumi.Input.mapOptionalInputValue<ModelInferenceExecutionConfig, Map<String, dynamic>>(inferenceExecutionConfig, (value) => value.toMap()),
      'name': ?name,
      'primaryContainer': ?pulumi.Input.mapOptionalInputValue<ModelPrimaryContainer, Map<String, dynamic>>(primaryContainer, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ModelVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<ModelContainer>(map['containers'], (value) => ModelContainer.fromMap((value as Map).cast<String, dynamic>())),
      enableNetworkIsolation: map['enableNetworkIsolation'] == null ? null : map['enableNetworkIsolation'] as bool,
      executionRoleArn: map['executionRoleArn'] as String,
      inferenceExecutionConfig: map['inferenceExecutionConfig'] == null ? null : ModelInferenceExecutionConfig.fromMap((map['inferenceExecutionConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      primaryContainer: map['primaryContainer'] == null ? null : ModelPrimaryContainer.fromMap((map['primaryContainer'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcConfig: map['vpcConfig'] == null ? null : ModelVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

