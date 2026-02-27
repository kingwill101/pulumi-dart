import 'package:pulumi/pulumi.dart';
import '../model_container/model_container.dart';
import '../model_inference_execution_config/model_inference_execution_config.dart';
import '../model_primary_container/model_primary_container.dart';
import '../model_vpc_config/model_vpc_config.dart';
import 'model_args3.dart';

/// Manages an Amazon SageMaker AI Model.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import models using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/model:Model example model-foo
/// ```
class Model3 extends CustomResource {
  /// Amazon Resource Name (ARN) assigned by AWS to this model.
  late final Output<String> arn;

  /// Specifies containers in the inference pipeline. If not specified, the `primary_container` argument is required. Fields are documented below.
  late final Output<List<ModelContainer>?> containers;

  /// Isolates the model container. No inbound or outbound network calls can be made to or from the model container.
  late final Output<bool?> enableNetworkIsolation;

  /// A role that SageMaker AI can assume to access model artifacts and docker images for deployment.
  late final Output<String> executionRoleArn;

  /// Specifies details of how containers in a multi-container endpoint are called. See Inference Execution Config.
  late final Output<ModelInferenceExecutionConfig> inferenceExecutionConfig;

  /// Name of the model (must be unique). If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Primary docker image containing inference code that is used when the model is deployed for predictions.  If not specified, the `container` argument is required. Fields are documented below.
  late final Output<ModelPrimaryContainer?> primaryContainer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specifies the VPC that you want your model to connect to. This configuration is used in hosting services and in batch transform. See VPC Config.
  late final Output<ModelVpcConfig?> vpcConfig;

  Model3(
    String name, {
    ModelArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/model:Model',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containers = registerOutput<List<ModelContainer>?>('containers');
    this.enableNetworkIsolation =
        registerOutput<bool?>('enableNetworkIsolation');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.inferenceExecutionConfig =
        registerOutput<ModelInferenceExecutionConfig>(
            'inferenceExecutionConfig');
    this.name = registerOutput<String>('name');
    this.primaryContainer =
        registerOutput<ModelPrimaryContainer?>('primaryContainer');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<ModelVpcConfig?>('vpcConfig');
  }
}
