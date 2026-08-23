import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_args.dart';
import 'endpoint_configuration_async_inference_config.dart';
import 'endpoint_configuration_data_capture_config.dart';
import 'endpoint_configuration_state.dart';

/// Provides a SageMaker AI endpoint configuration resource.
///
/// &gt; **Note:** `aws.sagemaker.Endpoint` resources cannot recognize changes to an `aws.sagemaker.EndpointConfiguration` resource unless the Endpoint Configuration's `name` attribute, changes. Endpoint Configuration names should be randomized by either specifying `namePrefix` or specifying no name. This will automatically change the name when the Endpoint Configuration is modified. The Endpoint Configuration's lifecycle meta-argument `lifecycle.create_before_destroy` should also be set to `true` to prevent conflicts.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Endpoint Configurations using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpointConfiguration:EndpointConfiguration example example-endpoint-config
/// ```
class EndpointConfiguration extends pulumi.CustomResource {
  /// ARN assigned by AWS to this endpoint configuration.
  late final pulumi.Output<String> arn;
  /// How an endpoint performs asynchronous inference.
  late final pulumi.Output<EndpointConfigurationAsyncInferenceConfig?> asyncInferenceConfig;
  /// Parameters to capture input/output of SageMaker AI models endpoints. Fields are documented below.
  late final pulumi.Output<EndpointConfigurationDataCaptureConfig?> dataCaptureConfig;
  /// ARN of an IAM role that SageMaker AI can assume to perform actions on your behalf. Required when `modelName` is not specified in `productionVariants` to support Inference Components.
  late final pulumi.Output<String?> executionRoleArn;
  /// ARN of a AWS KMS key that SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Name of the endpoint configuration. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`. If `namePrefix` is specified, `name` is populated with the full name.
  late final pulumi.Output<String> name;
  /// Unique endpoint configuration name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// List each model that you want to host at this endpoint. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> productionVariants;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on `productionVariants`. If you use this field, you can only specify one variant for `productionVariants` and one variant for `shadowProductionVariants`. See below (same arguments as `productionVariants`).
  late final pulumi.Output<List<Map<String, dynamic>>?> shadowProductionVariants;
  /// Mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EndpointConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointConfiguration]. {@macro pulumi_sagemaker_endpoint_configuration_endpoint_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointConfiguration(
    String name, {
    EndpointConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpointConfiguration:EndpointConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    asyncInferenceConfig = registerOutput<EndpointConfigurationAsyncInferenceConfig?>('asyncInferenceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointConfigurationAsyncInferenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataCaptureConfig = registerOutput<EndpointConfigurationDataCaptureConfig?>('dataCaptureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointConfigurationDataCaptureConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    productionVariants = registerOutput<List<Map<String, dynamic>>>('productionVariants');
    region = registerOutput<String>('region');
    shadowProductionVariants = registerOutput<List<Map<String, dynamic>>?>('shadowProductionVariants');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [EndpointConfiguration] resource's state with the given [name] and [id].
  static EndpointConfiguration get(
    String name,
    pulumi.Input<String> id, {
    EndpointConfigurationState? state,
  }) {
    return EndpointConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpointConfiguration:EndpointConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    asyncInferenceConfig = registerOutput<EndpointConfigurationAsyncInferenceConfig?>('asyncInferenceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointConfigurationAsyncInferenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataCaptureConfig = registerOutput<EndpointConfigurationDataCaptureConfig?>('dataCaptureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointConfigurationDataCaptureConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    productionVariants = registerOutput<List<Map<String, dynamic>>>('productionVariants');
    region = registerOutput<String>('region');
    shadowProductionVariants = registerOutput<List<Map<String, dynamic>>?>('shadowProductionVariants');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
