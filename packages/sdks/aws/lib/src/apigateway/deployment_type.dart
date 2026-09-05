import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_state.dart';

/// Manages an API Gateway REST Deployment. A deployment is a snapshot of the REST API configuration. The deployment can then be published to callable endpoints via the `aws.apigateway.Stage` resource and optionally managed further with the `aws.apigateway.BasePathMapping` resource, `aws.apigateway.DomainName` resource, and `aws.apigateway.MethodSettings` resource. For more information, see the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-deploy-api.html).
///
/// To properly capture all REST API configuration in a deployment, this resource must have dependencies on all prior resources that manage resources/paths, methods, integrations, etc.
///
/// * For REST APIs that are configured via OpenAPI specification (`aws.apigateway.RestApi` resource `body` argument), no special dependency setup is needed beyond referencing the  `id` attribute of that resource unless additional resources have further customized the REST API.
/// * When the REST API configuration involves other resources (`aws.apigateway.Integration` resource), the dependency setup can be done with implicit resource references in the `triggers` argument or explicit resource references using the [resource `dependsOn` custom option](https://www.pulumi.com/docs/intro/concepts/resources/#dependson). The `triggers` argument should be preferred over `dependsOn`, since `dependsOn` can only capture dependency ordering and will not cause the resource to recreate (redeploy the REST API) with upstream configuration changes.
///
///
/// ## Example Usage
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Deployment` using `REST-API-ID/DEPLOYMENT-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/deployment:Deployment example aabbccddee/1122334
/// ```
///
/// The `variables` arguments cannot be imported. Use the `aws.apigateway.Stage` resource to import and manage stages.
///
/// The `triggers` argument cannot be imported.
class DeploymentType extends pulumi.CustomResource {
  /// Creation date of the deployment
  late final pulumi.Output<String> createdDate;
  /// Description of the deployment.
  late final pulumi.Output<String?> description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// REST API identifier.
  late final pulumi.Output<String> restApi;
  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  late final pulumi.Output<Map<String, String>?> triggers;
  /// Map to set on the related stage.
  late final pulumi.Output<Map<String, String>?> variables;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_apigateway_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    variables = registerOutput<Map<String, String>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DeploymentType] resource's state with the given [name] and [id].
  static DeploymentType get(
    String name,
    pulumi.Input<String> id, {
    DeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeploymentType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeploymentType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/deployment:Deployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    variables = registerOutput<Map<String, String>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DeploymentType] resource.
  DeploymentType.reference(String urn)
    : super(
        'aws:apigateway/deployment:Deployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    triggers = registerOutput<Map<String, String>?>('triggers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    variables = registerOutput<Map<String, String>?>('variables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
