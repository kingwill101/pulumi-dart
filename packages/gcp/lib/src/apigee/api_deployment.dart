import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_deployment_args.dart';

/// Manages a deployment of an API proxy.
///
///
/// To get more information about ApiDeployment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.apis.revisions.deployments)
/// * How-to Guides
/// * [QUICKSTART_TITLE](https://cloud.google.com/apigee/docs/api-platform/deploy/ui-deploy-overview)
///
/// ## Example Usage
///
/// ## Import
///
/// ApiDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/apis/{{proxy_id}}/revisions/{{revision}}/deployments`
///
/// * `organizations/{{org_id}}/environments/{{environment}}/apis/{{proxy_id}}/revisions/{{revision}}`
///
/// * `{{org_id}}/{{environment}}/{{proxy_id}}/{{revision}}/deployments`
///
/// * `{{org_id}}/{{environment}}/{{proxy_id}}/{{revision}}`
///
/// When using the `pulumi import` command, ApiDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/apiDeployment:ApiDeployment default organizations/{{org_id}}/environments/{{environment}}/apis/{{proxy_id}}/revisions/{{revision}}/deployments
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/apiDeployment:ApiDeployment default organizations/{{org_id}}/environments/{{environment}}/apis/{{proxy_id}}/revisions/{{revision}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/apiDeployment:ApiDeployment default {{org_id}}/{{environment}}/{{proxy_id}}/{{revision}}/deployments
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/apiDeployment:ApiDeployment default {{org_id}}/{{environment}}/{{proxy_id}}/{{revision}}
/// ```
class ApiDeployment extends pulumi.CustomResource {
  /// The Apigee Environment associated with the Apigee API deployment.
  late final pulumi.Output<String> environment;

  /// The Apigee Organization associated with the Apigee API deployment.
  late final pulumi.Output<String> orgId;

  /// The Apigee API associated with the Apigee API deployment.
  late final pulumi.Output<String> proxyId;

  /// The revision of the API proxy to be deployed.
  late final pulumi.Output<String> revision;

  /// Creates a new [ApiDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiDeployment]. {@macro pulumi_apigee_api_deployment_api_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiDeployment(
    String name, {
    ApiDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/apiDeployment:ApiDeployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.environment = registerOutput<String>('environment');
    this.orgId = registerOutput<String>('orgId');
    this.proxyId = registerOutput<String>('proxyId');
    this.revision = registerOutput<String>('revision');
  }
}
