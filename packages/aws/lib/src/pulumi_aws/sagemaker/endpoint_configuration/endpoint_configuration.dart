import 'package:pulumi/pulumi.dart';
import '../endpoint_configuration_async_inference_config/endpoint_configuration_async_inference_config.dart';
import '../endpoint_configuration_data_capture_config/endpoint_configuration_data_capture_config.dart';
import '../endpoint_configuration_production_variant/endpoint_configuration_production_variant.dart';
import '../endpoint_configuration_shadow_production_variant/endpoint_configuration_shadow_production_variant.dart';
import 'endpoint_configuration_args.dart';

/// Provides a SageMaker AI endpoint configuration resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import endpoint configurations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpointConfiguration:EndpointConfiguration test_endpoint_config endpoint-config-foo
/// ```
class EndpointConfiguration extends CustomResource {
  /// ARN assigned by AWS to this endpoint configuration.
  late final Output<String> arn;

  /// How an endpoint performs asynchronous inference.
  late final Output<EndpointConfigurationAsyncInferenceConfig?>
      asyncInferenceConfig;

  /// Parameters to capture input/output of SageMaker AI models endpoints. Fields are documented below.
  late final Output<EndpointConfigurationDataCaptureConfig?> dataCaptureConfig;

  /// ARN of an IAM role that SageMaker AI can assume to perform actions on your behalf. Required when `model_name` is not specified in `production_variants` to support Inference Components.
  late final Output<String?> executionRoleArn;

  /// ARN of a AWS KMS key that SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
  late final Output<String?> kmsKeyArn;

  /// Name of the endpoint configuration. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final Output<String> name;

  /// Unique endpoint configuration name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// List each model that you want to host at this endpoint. See below.
  late final Output<List<EndpointConfigurationProductionVariant>>
      productionVariants;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on `production_variants`. If you use this field, you can only specify one variant for `production_variants` and one variant for `shadow_production_variants`. See below (same arguments as `production_variants`).
  late final Output<List<EndpointConfigurationShadowProductionVariant>?>
      shadowProductionVariants;

  /// Mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  EndpointConfiguration(
    String name, {
    EndpointConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpointConfiguration:EndpointConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.asyncInferenceConfig =
        registerOutput<EndpointConfigurationAsyncInferenceConfig?>(
            'asyncInferenceConfig');
    this.dataCaptureConfig =
        registerOutput<EndpointConfigurationDataCaptureConfig?>(
            'dataCaptureConfig');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.productionVariants =
        registerOutput<List<EndpointConfigurationProductionVariant>>(
            'productionVariants');
    this.region = registerOutput<String>('region');
    this.shadowProductionVariants =
        registerOutput<List<EndpointConfigurationShadowProductionVariant>?>(
            'shadowProductionVariants');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
