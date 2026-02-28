// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_enterprise_secrets.dart';

/// {@template pulumi_cloudbuild_v1_github_enterprise_config_args_doc}
/// The set of arguments for GithubEnterpriseConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_github_enterprise_config_args_doc}
class GithubEnterpriseConfigArgs {
  /// The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  final pulumi.Input<String> appId;
  /// Name to display for this config.
  final pulumi.Input<String>? displayName;
  /// Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig's resource name. ghe_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  final pulumi.Input<String>? gheConfigId;
  /// The URL of the github enterprise host the configuration is for.
  final pulumi.Input<String>? hostUrl;
  final pulumi.Input<String>? location;
  /// Optional. The full resource name for the GitHubEnterpriseConfig For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  final pulumi.Input<String>? name;
  /// Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final pulumi.Input<String>? peeredNetwork;
  final pulumi.Input<String>? project;
  /// ID of the project.
  final pulumi.Input<String>? projectId;
  /// Names of secrets in Secret Manager.
  final pulumi.Input<GitHubEnterpriseSecrets>? secrets;
  /// Optional. SSL certificate to use for requests to GitHub Enterprise.
  final pulumi.Input<String>? sslCa;
  /// The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
  final pulumi.Input<String>? webhookKey;

  /// Creates a new [GithubEnterpriseConfigArgs].
  /// [appId] The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  /// [displayName] Name to display for this config.
  /// [gheConfigId] Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig's resource name. ghe_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  /// [hostUrl] The URL of the github enterprise host the configuration is for.
  /// [location] Optional.
  /// [name] Optional. The full resource name for the GitHubEnterpriseConfig For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  /// [peeredNetwork] Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  /// [project] Optional.
  /// [projectId] ID of the project.
  /// [secrets] Names of secrets in Secret Manager.
  /// [sslCa] Optional. SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookKey] The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
  GithubEnterpriseConfigArgs({
    required String appId,
    String? displayName,
    String? gheConfigId,
    String? hostUrl,
    String? location,
    String? name,
    String? peeredNetwork,
    String? project,
    String? projectId,
    GitHubEnterpriseSecrets? secrets,
    String? sslCa,
    String? webhookKey,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gheConfigId = pulumi.Input.asOptionalInput<String>(gheConfigId),
      hostUrl = pulumi.Input.asOptionalInput<String>(hostUrl),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      peeredNetwork = pulumi.Input.asOptionalInput<String>(peeredNetwork),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      secrets = pulumi.Input.asOptionalInput<GitHubEnterpriseSecrets>(secrets),
      sslCa = pulumi.Input.asOptionalInput<String>(sslCa),
      webhookKey = pulumi.Input.asOptionalInput<String>(webhookKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'displayName': ?displayName,
      'gheConfigId': ?gheConfigId,
      'hostUrl': ?hostUrl,
      'location': ?location,
      'name': ?name,
      'peeredNetwork': ?peeredNetwork,
      'project': ?project,
      'projectId': ?projectId,
      'secrets': ?pulumi.Input.mapOptionalInputValue<GitHubEnterpriseSecrets, Map<String, dynamic>>(secrets, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'webhookKey': ?webhookKey,
    };
  }

  factory GithubEnterpriseConfigArgs.fromMap(Map<String, dynamic> map) {
    return GithubEnterpriseConfigArgs(
      appId: map['appId'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gheConfigId: map['gheConfigId'] == null ? null : map['gheConfigId'] as String,
      hostUrl: map['hostUrl'] == null ? null : map['hostUrl'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      peeredNetwork: map['peeredNetwork'] == null ? null : map['peeredNetwork'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      secrets: map['secrets'] == null ? null : GitHubEnterpriseSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      webhookKey: map['webhookKey'] == null ? null : map['webhookKey'] as String,
    );
  }
}

