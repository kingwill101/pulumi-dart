import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_deployment_config.dart';
import 'endpoint_state.dart';

/// Provides a SageMaker AI Endpoint resource.
///
/// &gt; **Note:** `aws.sagemaker.Endpoint` resources cannot recognize changes to an `aws.sagemaker.EndpointConfiguration` resource unless the Endpoint Configuration's `name` attribute, changes. Endpoint Configuration names should be randomized by either specifying `namePrefix` or specifying no name. This will automatically change the name when the Endpoint Configuration is modified. The Endpoint Configuration's lifecycle meta-argument `lifecycle.create_before_destroy` should also be set to `true` to prevent conflicts.
///
/// ## Import
///
/// Using `pulumi import`, import endpoints using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpoint:Endpoint test_endpoint my-endpoint
/// ```
class Endpoint extends pulumi.CustomResource {
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_sagemaker_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deploymentConfig = registerOutput<EndpointDeploymentConfig?>('deploymentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointConfigName = registerOutput<String>('endpointConfigName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deploymentConfig = registerOutput<EndpointDeploymentConfig?>('deploymentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointConfigName = registerOutput<String>('endpointConfigName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
