import 'package:pulumi/pulumi.dart';
import 'environment_api_revision_deployment_args.dart';

/// Deploys a specific Apigee API Proxy revision to a given Apigee environment.
///
///
/// To get more information about EnvironmentApiRevisionDeployment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.apis.revisions.deployments/deploy)
/// * How-to Guides
/// * [Deploying an API proxy](https://cloud.google.com/apigee/docs/api-platform/deploy/ui-deploy-new#apigee-api)
///
/// ## Example Usage
///
/// ### Apigee Environment Api Revision Deployment Basic
///
///
///
///
/// ## Import
///
/// EnvironmentApiRevisionDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/apis/{{api}}/revisions/{{revision}}`
///
/// * `{{org_id}}/{{environment}}/{{api}}/{{revision}}`
///
/// * `{{id}}`
///
/// When using the `pulumi import` command, EnvironmentApiRevisionDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default organizations/{{org_id}}/environments/{{environment}}/apis/{{api}}/revisions/{{revision}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default {{org_id}}/{{environment}}/{{api}}/{{revision}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default {{id}}
/// ```
class EnvironmentApiRevisionDeployment extends CustomResource {
  /// Apigee API proxy name.
  late final Output<String> api;

  /// Basepaths associated with the deployed proxy.
  late final Output<List<String>> basepaths;

  /// RFC3339 timestamp when deployment started.
  late final Output<String> deployStartTime;

  /// Apigee environment name.
  late final Output<String> environment;

  /// Apigee organization ID.
  late final Output<String> orgId;

  /// If true, replaces other deployed revisions of this proxy in the environment.
  late final Output<bool?> override;

  /// API proxy revision number to deploy.
  late final Output<int> revision;

  /// If true, enables sequenced rollout for safe traffic switching.
  late final Output<bool?> sequencedRollout;

  /// Optional service account the deployed proxy runs as.
  late final Output<String?> serviceAccount;

  /// Deployment state reported by Apigee.
  late final Output<String> state;

  EnvironmentApiRevisionDeployment(
    String name, {
    EnvironmentApiRevisionDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.api = registerOutput<String>('api');
    this.basepaths = registerOutput<List<String>>('basepaths');
    this.deployStartTime = registerOutput<String>('deployStartTime');
    this.environment = registerOutput<String>('environment');
    this.orgId = registerOutput<String>('orgId');
    this.override = registerOutput<bool?>('override');
    this.revision = registerOutput<int>('revision');
    this.sequencedRollout = registerOutput<bool?>('sequencedRollout');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.state = registerOutput<String>('state');
  }
}
