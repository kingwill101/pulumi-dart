// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_async_inference_config.dart';
import 'endpoint_configuration_data_capture_config.dart';
import 'endpoint_configuration_production_variant.dart';
import 'endpoint_configuration_shadow_production_variant.dart';

/// Input properties used for looking up and filtering EndpointConfiguration resources.
class EndpointConfigurationState {
  /// ARN assigned by AWS to this endpoint configuration.
  final pulumi.Input<String>? arn;
  /// How an endpoint performs asynchronous inference.
  final pulumi.Input<EndpointConfigurationAsyncInferenceConfig>? asyncInferenceConfig;
  /// Parameters to capture input/output of SageMaker AI models endpoints. Fields are documented below.
  final pulumi.Input<EndpointConfigurationDataCaptureConfig>? dataCaptureConfig;
  /// ARN of an IAM role that SageMaker AI can assume to perform actions on your behalf. Required when `model_name` is not specified in `production_variants` to support Inference Components.
  final pulumi.Input<String>? executionRoleArn;
  /// ARN of a AWS KMS key that SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
  final pulumi.Input<String>? kmsKeyArn;
  /// Name of the endpoint configuration. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Unique endpoint configuration name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// List each model that you want to host at this endpoint. See below.
  final pulumi.Input<List<EndpointConfigurationProductionVariant>>? productionVariants;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on `production_variants`. If you use this field, you can only specify one variant for `production_variants` and one variant for `shadow_production_variants`. See below (same arguments as `production_variants`).
  final pulumi.Input<List<EndpointConfigurationShadowProductionVariant>>? shadowProductionVariants;
  /// Mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [EndpointConfigurationState].
  /// [arn] ARN assigned by AWS to this endpoint configuration.
  /// [asyncInferenceConfig] How an endpoint performs asynchronous inference.
  /// [dataCaptureConfig] Parameters to capture input/output of SageMaker AI models endpoints. Fields are documented below.
  /// [executionRoleArn] ARN of an IAM role that SageMaker AI can assume to perform actions on your behalf. Required when `model_name` is not specified in `production_variants` to support Inference Components.
  /// [kmsKeyArn] ARN of a AWS KMS key that SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
  /// [name] Name of the endpoint configuration. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Unique endpoint configuration name beginning with the specified prefix. Conflicts with `name`.
  /// [productionVariants] List each model that you want to host at this endpoint. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shadowProductionVariants] Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on `production_variants`. If you use this field, you can only specify one variant for `production_variants` and one variant for `shadow_production_variants`. See below (same arguments as `production_variants`).
  /// [tags] Mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  EndpointConfigurationState({
    this.arn,
    this.asyncInferenceConfig,
    this.dataCaptureConfig,
    this.executionRoleArn,
    this.kmsKeyArn,
    this.name,
    this.namePrefix,
    this.productionVariants,
    this.region,
    this.shadowProductionVariants,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'asyncInferenceConfig': ?pulumi.Input.mapOptionalInputValue<EndpointConfigurationAsyncInferenceConfig, Map<String, dynamic>>(asyncInferenceConfig, (value) => value.toMap()),
      'dataCaptureConfig': ?pulumi.Input.mapOptionalInputValue<EndpointConfigurationDataCaptureConfig, Map<String, dynamic>>(dataCaptureConfig, (value) => value.toMap()),
      'executionRoleArn': ?executionRoleArn,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'productionVariants': ?pulumi.Input.mapOptionalInputValue<List<EndpointConfigurationProductionVariant>, List<Map<String, dynamic>>>(productionVariants, (value) => pulumi.Input.encodeList<EndpointConfigurationProductionVariant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'shadowProductionVariants': ?pulumi.Input.mapOptionalInputValue<List<EndpointConfigurationShadowProductionVariant>, List<Map<String, dynamic>>>(shadowProductionVariants, (value) => pulumi.Input.encodeList<EndpointConfigurationShadowProductionVariant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory EndpointConfigurationState.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      asyncInferenceConfig: map['asyncInferenceConfig'] == null ? null : ((EndpointConfigurationAsyncInferenceConfig.fromMap((map['asyncInferenceConfig']! as Map).cast<String, dynamic>())).input()).input(),
      dataCaptureConfig: map['dataCaptureConfig'] == null ? null : ((EndpointConfigurationDataCaptureConfig.fromMap((map['dataCaptureConfig']! as Map).cast<String, dynamic>())).input()).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : ((map['executionRoleArn'] as String).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      productionVariants: map['productionVariants'] == null ? null : ((pulumi.Input.decodeList<EndpointConfigurationProductionVariant>(map['productionVariants']!, (value) => EndpointConfigurationProductionVariant.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      shadowProductionVariants: map['shadowProductionVariants'] == null ? null : ((pulumi.Input.decodeList<EndpointConfigurationShadowProductionVariant>(map['shadowProductionVariants']!, (value) => EndpointConfigurationShadowProductionVariant.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

