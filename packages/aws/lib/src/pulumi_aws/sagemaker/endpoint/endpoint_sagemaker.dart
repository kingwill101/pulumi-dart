import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_deployment_config/endpoint_deployment_config.dart';
import 'endpoint_sagemaker_args.dart';

/// Provides a SageMaker AI Endpoint resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import endpoints using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpoint:Endpoint test_endpoint my-endpoint
/// ```
class EndpointSagemaker extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this endpoint.
  late final pulumi.Output<String> arn;

  /// The deployment configuration for an endpoint, which contains the desired deployment strategy and rollback configurations. See Deployment Config.
  late final pulumi.Output<EndpointDeploymentConfig?> deploymentConfig;

  /// The name of the endpoint configuration to use.
  late final pulumi.Output<String> endpointConfigName;

  /// The name of the endpoint. If omitted, the provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  EndpointSagemaker(
    String name, {
    EndpointSagemakerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deploymentConfig =
        registerOutput<EndpointDeploymentConfig?>('deploymentConfig');
    this.endpointConfigName = registerOutput<String>('endpointConfigName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
