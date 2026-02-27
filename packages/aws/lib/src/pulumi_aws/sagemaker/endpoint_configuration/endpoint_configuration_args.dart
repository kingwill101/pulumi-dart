// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_configuration_async_inference_config/endpoint_configuration_async_inference_config.dart';
import '../endpoint_configuration_data_capture_config/endpoint_configuration_data_capture_config.dart';
import '../endpoint_configuration_production_variant/endpoint_configuration_production_variant.dart';
import '../endpoint_configuration_shadow_production_variant/endpoint_configuration_shadow_production_variant.dart';

/// The set of arguments for EndpointConfiguration.
class EndpointConfigurationArgs {
  /// How an endpoint performs asynchronous inference.
  final pulumi.Input<EndpointConfigurationAsyncInferenceConfig>?
      asyncInferenceConfig;

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
  final pulumi.Input<List<EndpointConfigurationProductionVariant>>
      productionVariants;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on `production_variants`. If you use this field, you can only specify one variant for `production_variants` and one variant for `shadow_production_variants`. See below (same arguments as `production_variants`).
  final pulumi.Input<List<EndpointConfigurationShadowProductionVariant>>?
      shadowProductionVariants;

  /// Mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  EndpointConfigurationArgs({
    this.asyncInferenceConfig,
    this.dataCaptureConfig,
    this.executionRoleArn,
    this.kmsKeyArn,
    this.name,
    this.namePrefix,
    required this.productionVariants,
    this.region,
    this.shadowProductionVariants,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asyncInferenceConfigValue = asyncInferenceConfig;
    if (asyncInferenceConfigValue != null) {
      map['asyncInferenceConfig'] = pulumi.Input.mapOptionalInputValue<
              EndpointConfigurationAsyncInferenceConfig, Map<String, dynamic>>(
          asyncInferenceConfigValue, (value) => value.toMap());
    }
    final dataCaptureConfigValue = dataCaptureConfig;
    if (dataCaptureConfigValue != null) {
      map['dataCaptureConfig'] = pulumi.Input.mapOptionalInputValue<
              EndpointConfigurationDataCaptureConfig, Map<String, dynamic>>(
          dataCaptureConfigValue, (value) => value.toMap());
    }
    final executionRoleArnValue = executionRoleArn;
    if (executionRoleArnValue != null) {
      map['executionRoleArn'] = executionRoleArnValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    map['productionVariants'] = pulumi.Input.mapInputValue<
            List<EndpointConfigurationProductionVariant>,
            List<Map<String, dynamic>>>(
        productionVariants,
        (value) => pulumi.Input.encodeList<
            EndpointConfigurationProductionVariant,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final shadowProductionVariantsValue = shadowProductionVariants;
    if (shadowProductionVariantsValue != null) {
      map['shadowProductionVariants'] = pulumi.Input.mapOptionalInputValue<
              List<EndpointConfigurationShadowProductionVariant>,
              List<Map<String, dynamic>>>(
          shadowProductionVariantsValue,
          (value) => pulumi.Input.encodeList<
              EndpointConfigurationShadowProductionVariant,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EndpointConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationArgs(
      asyncInferenceConfig: pulumi.Input.asOptionalInput<
              EndpointConfigurationAsyncInferenceConfig>(
          map['asyncInferenceConfig']),
      dataCaptureConfig:
          pulumi.Input.asOptionalInput<EndpointConfigurationDataCaptureConfig>(
              map['dataCaptureConfig']),
      executionRoleArn:
          pulumi.Input.asOptionalInput<String>(map['executionRoleArn']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      productionVariants:
          pulumi.Input.asInput<List<EndpointConfigurationProductionVariant>>(
              map['productionVariants']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      shadowProductionVariants: pulumi.Input.asOptionalInput<
              List<EndpointConfigurationShadowProductionVariant>>(
          map['shadowProductionVariants']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
