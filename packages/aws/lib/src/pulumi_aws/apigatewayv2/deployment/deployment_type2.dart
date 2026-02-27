import 'package:pulumi/pulumi.dart';
import 'deployment_args2.dart';

/// Manages an Amazon API Gateway Version 2 deployment.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// > **Note:** Creating a deployment for an API requires at least one `aws.apigatewayv2.Route` resource associated with that API. To avoid race conditions when all resources are being created together, you need to add implicit resource references via the `triggers` argument or explicit resource references using the [resource `dependsOn` meta-argument](https://www.pulumi.com/docs/intro/concepts/programming-model/#dependson).
///
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Deployment` using the API identifier and deployment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/deployment:Deployment example aabbccddee/1122334
/// ```
///
/// The `triggers` argument cannot be imported.
class DeploymentType2 extends CustomResource {
  /// API identifier.
  late final Output<String> apiId;

  /// Whether the deployment was automatically released.
  late final Output<bool> autoDeployed;

  /// Description for the deployment resource. Must be less than or equal to 1024 characters in length.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  late final Output<Map<String, String>?> triggers;

  DeploymentType2(
    String name, {
    DeploymentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.autoDeployed = registerOutput<bool>('autoDeployed');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
