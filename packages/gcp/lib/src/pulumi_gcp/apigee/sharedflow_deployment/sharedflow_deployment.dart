import 'package:pulumi/pulumi.dart';
import 'sharedflow_deployment_args.dart';

/// Deploys a revision of a sharedflow.
///
///
/// To get more information about SharedflowDeployment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.sharedflows.revisions.deployments)
/// * How-to Guides
/// * [sharedflows.revisions.deployments](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.sharedflows.revisions.deployments)
///
/// ## Import
///
/// SharedflowDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/sharedflows/{{sharedflow_id}}/revisions/{{revision}}/deployments/{{name}}`
///
/// * `{{org_id}}/{{environment}}/{{sharedflow_id}}/{{revision}}/{{name}}`
///
/// When using the `pulumi import` command, SharedflowDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/sharedflowDeployment:SharedflowDeployment default organizations/{{org_id}}/environments/{{environment}}/sharedflows/{{sharedflow_id}}/revisions/{{revision}}/deployments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/sharedflowDeployment:SharedflowDeployment default {{org_id}}/{{environment}}/{{sharedflow_id}}/{{revision}}/{{name}}
/// ```
class SharedflowDeployment extends CustomResource {
  /// The resource ID of the environment.
  late final Output<String> environment;

  /// The Apigee Organization associated with the Sharedflow
  late final Output<String> orgId;

  /// Revision of the Sharedflow to be deployed.
  ///
  ///
  /// - - -
  late final Output<String> revision;

  /// The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  late final Output<String?> serviceAccount;

  /// Id of the Sharedflow to be deployed.
  late final Output<String> sharedflowId;

  SharedflowDeployment(
    String name, {
    SharedflowDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/sharedflowDeployment:SharedflowDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.environment = Output.createUnknown<String>();
    this.orgId = Output.createUnknown<String>();
    this.revision = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String?>();
    this.sharedflowId = Output.createUnknown<String>();
  }
}
