// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_configuration_async_inference_config/endpoint_configuration_async_inference_config.dart';
import '../endpoint_configuration_data_capture_config/endpoint_configuration_data_capture_config.dart';
import '../endpoint_configuration_production_variant/endpoint_configuration_production_variant.dart';
import '../endpoint_configuration_shadow_production_variant/endpoint_configuration_shadow_production_variant.dart';

/// The set of arguments for EndpointConfiguration.
class EndpointConfigurationArgs {
  /// How an endpoint performs asynchronous inference.
  final Input<EndpointConfigurationAsyncInferenceConfig>? asyncInferenceConfig;

  /// Parameters to capture input/output of SageMaker AI models endpoints. Fields are documented below.
  final Input<EndpointConfigurationDataCaptureConfig>? dataCaptureConfig;

  /// ARN of an IAM role that SageMaker AI can assume to perform actions on your behalf. Required when <span pulumi-lang-nodejs="`modelName`" pulumi-lang-dotnet="`ModelName`" pulumi-lang-go="`modelName`" pulumi-lang-python="`model_name`" pulumi-lang-yaml="`modelName`" pulumi-lang-java="`modelName`">`model_name`</span> is not specified in <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span> to support Inference Components.
  final Input<String>? executionRoleArn;

  /// ARN of a AWS KMS key that SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
  final Input<String>? kmsKeyArn;

  /// Name of the endpoint configuration. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Unique endpoint configuration name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// List each model that you want to host at this endpoint. See below.
  final Input<List<EndpointConfigurationProductionVariant>> productionVariants;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span>. If you use this field, you can only specify one variant for <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span> and one variant for <span pulumi-lang-nodejs="`shadowProductionVariants`" pulumi-lang-dotnet="`ShadowProductionVariants`" pulumi-lang-go="`shadowProductionVariants`" pulumi-lang-python="`shadow_production_variants`" pulumi-lang-yaml="`shadowProductionVariants`" pulumi-lang-java="`shadowProductionVariants`">`shadow_production_variants`</span>. See below (same arguments as <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span>).
  final Input<List<EndpointConfigurationShadowProductionVariant>>?
      shadowProductionVariants;

  /// Mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['asyncInferenceConfig'] = Input.mapOptionalInputValue<
              EndpointConfigurationAsyncInferenceConfig, Map<String, dynamic>>(
          asyncInferenceConfigValue, (value) => value.toMap());
    }
    final dataCaptureConfigValue = dataCaptureConfig;
    if (dataCaptureConfigValue != null) {
      map['dataCaptureConfig'] = Input.mapOptionalInputValue<
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
    map['productionVariants'] = Input.mapInputValue<
            List<EndpointConfigurationProductionVariant>,
            List<Map<String, dynamic>>>(
        productionVariants,
        (value) => Input.encodeList<EndpointConfigurationProductionVariant,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final shadowProductionVariantsValue = shadowProductionVariants;
    if (shadowProductionVariantsValue != null) {
      map['shadowProductionVariants'] = Input.mapOptionalInputValue<
              List<EndpointConfigurationShadowProductionVariant>,
              List<Map<String, dynamic>>>(
          shadowProductionVariantsValue,
          (value) => Input.encodeList<
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
      asyncInferenceConfig:
          Input.asOptionalInput<EndpointConfigurationAsyncInferenceConfig>(
              map['asyncInferenceConfig']),
      dataCaptureConfig:
          Input.asOptionalInput<EndpointConfigurationDataCaptureConfig>(
              map['dataCaptureConfig']),
      executionRoleArn: Input.asOptionalInput<String>(map['executionRoleArn']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      productionVariants:
          Input.asInput<List<EndpointConfigurationProductionVariant>>(
              map['productionVariants']),
      region: Input.asOptionalInput<String>(map['region']),
      shadowProductionVariants: Input.asOptionalInput<
              List<EndpointConfigurationShadowProductionVariant>>(
          map['shadowProductionVariants']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
