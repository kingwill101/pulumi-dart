import 'package:pulumi/pulumi.dart' as pulumi;
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
class SharedflowDeployment extends pulumi.CustomResource {
  /// The resource ID of the environment.
  late final pulumi.Output<String> environment;
  /// The Apigee Organization associated with the Sharedflow
  late final pulumi.Output<String> orgId;
  /// Revision of the Sharedflow to be deployed.
  ///
  ///
  /// - - -
  late final pulumi.Output<String> revision;
  /// The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com.
  late final pulumi.Output<String?> serviceAccount;
  /// Id of the Sharedflow to be deployed.
  late final pulumi.Output<String> sharedflowId;

  /// Creates a new [SharedflowDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedflowDeployment]. {@macro pulumi_apigee_sharedflow_deployment_sharedflow_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedflowDeployment(
    String name, {
    SharedflowDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/sharedflowDeployment:SharedflowDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.environment = registerOutput<String>('environment');
    this.orgId = registerOutput<String>('orgId');
    this.revision = registerOutput<String>('revision');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.sharedflowId = registerOutput<String>('sharedflowId');
  }
}
