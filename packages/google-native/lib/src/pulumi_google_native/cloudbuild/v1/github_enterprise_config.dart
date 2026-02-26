import 'package:pulumi/pulumi.dart';
import 'git_hub_enterprise_secrets_response.dart';
import 'github_enterprise_config_args.dart';

/// Create an association between a GCP project and a GitHub Enterprise server.
class GithubEnterpriseConfig extends CustomResource {
  /// The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  late final Output<String> appId;

  /// Time when the installation was associated with the project.
  late final Output<String> createTime;

  /// Name to display for this config.
  late final Output<String> displayName;

  /// Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig's resource name. ghe_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  late final Output<String?> gheConfigId;

  /// The URL of the github enterprise host the configuration is for.
  late final Output<String> hostUrl;
  late final Output<String> location;

  /// Optional. The full resource name for the GitHubEnterpriseConfig For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  late final Output<String> name;

  /// Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  late final Output<String> peeredNetwork;
  late final Output<String> project;

  /// ID of the project.
  late final Output<String?> projectId;

  /// Names of secrets in Secret Manager.
  late final Output<GitHubEnterpriseSecretsResponse> secrets;

  /// Optional. SSL certificate to use for requests to GitHub Enterprise.
  late final Output<String> sslCa;

  /// The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
  late final Output<String> webhookKey;

  GithubEnterpriseConfig(
    String name, {
    GithubEnterpriseConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1:GithubEnterpriseConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.gheConfigId = Output.createUnknown<String?>();
    this.hostUrl = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.peeredNetwork = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.projectId = Output.createUnknown<String?>();
    this.secrets = Output.createUnknown<GitHubEnterpriseSecretsResponse>();
    this.sslCa = Output.createUnknown<String>();
    this.webhookKey = Output.createUnknown<String>();
  }
}
