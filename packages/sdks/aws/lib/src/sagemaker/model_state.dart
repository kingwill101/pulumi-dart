// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container.dart';
import 'model_inference_execution_config.dart';
import 'model_primary_container.dart';
import 'model_vpc_config.dart';

/// Input properties used for looking up and filtering Model resources.
class ModelState {
  /// ARN assigned by AWS to this model.
  final pulumi.Input<String?>? arn;
  /// Specifies containers in the inference pipeline. If not specified, the `primaryContainer` argument is required. Fields are documented below.
  final pulumi.Input<List<ModelContainer>?>? containers;
  /// Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
  final pulumi.Input<bool?>? enableNetworkIsolation;
  /// A role that SageMaker AI can assume to access model artifacts and docker images for deployment.
  final pulumi.Input<String?>? executionRoleArn;
  /// Specifies details of how containers in a multi-container endpoint are called. See Inference Execution Config.
  final pulumi.Input<ModelInferenceExecutionConfig?>? inferenceExecutionConfig;
  /// Name of the model (must be unique). If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String?>? name;
  /// Primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the `container` argument is required. Fields are documented below.
  final pulumi.Input<ModelPrimaryContainer?>? primaryContainer;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Specifies the VPC that you want your model to connect to. This configuration is used in hosting services and in batch transform. See VPC Config.
  final pulumi.Input<ModelVpcConfig?>? vpcConfig;

  /// Creates a new [ModelState].
  /// [arn] ARN assigned by AWS to this model.
  /// [containers] Specifies containers in the inference pipeline. If not specified, the `primaryContainer` argument is required. Fields are documented below.
  /// [enableNetworkIsolation] Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
  /// [executionRoleArn] A role that SageMaker AI can assume to access model artifacts and docker images for deployment.
  /// [inferenceExecutionConfig] Specifies details of how containers in a multi-container endpoint are called. See Inference Execution Config.
  /// [name] Name of the model (must be unique). If omitted, the provider will assign a random, unique name.
  /// [primaryContainer] Primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the `container` argument is required. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcConfig] Specifies the VPC that you want your model to connect to. This configuration is used in hosting services and in batch transform. See VPC Config.
  const ModelState({
    this.arn,
    this.containers,
    this.enableNetworkIsolation,
    this.executionRoleArn,
    this.inferenceExecutionConfig,
    this.name,
    this.primaryContainer,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ModelContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ModelContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableNetworkIsolation': ?enableNetworkIsolation,
      'executionRoleArn': ?executionRoleArn,
      'inferenceExecutionConfig': ?pulumi.Input.mapOptionalInputValue<ModelInferenceExecutionConfig, Map<String, dynamic>>(inferenceExecutionConfig, (value) => value.toMap()),
      'name': ?name,
      'primaryContainer': ?pulumi.Input.mapOptionalInputValue<ModelPrimaryContainer, Map<String, dynamic>>(primaryContainer, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ModelVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ModelState.fromMap(Map<String, dynamic> map) {
    return ModelState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ModelContainer>(guardedValue, (value) => ModelContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableNetworkIsolation: (() { final guardedValue = map['enableNetworkIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceExecutionConfig: (() { final guardedValue = map['inferenceExecutionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelInferenceExecutionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryContainer: (() { final guardedValue = map['primaryContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelPrimaryContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
