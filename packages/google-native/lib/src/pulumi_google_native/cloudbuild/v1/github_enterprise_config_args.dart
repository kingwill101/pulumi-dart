// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'git_hub_enterprise_secrets.dart';

/// The set of arguments for GithubEnterpriseConfig.
class GithubEnterpriseConfigArgs {
  /// The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  final Input<String> appId;

  /// Name to display for this config.
  final Input<String>? displayName;

  /// Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig's resource name. ghe_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  final Input<String>? gheConfigId;

  /// The URL of the github enterprise host the configuration is for.
  final Input<String>? hostUrl;
  final Input<String>? location;

  /// Optional. The full resource name for the GitHubEnterpriseConfig For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  final Input<String>? name;

  /// Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final Input<String>? peeredNetwork;
  final Input<String>? project;

  /// ID of the project.
  final Input<String>? projectId;

  /// Names of secrets in Secret Manager.
  final Input<GitHubEnterpriseSecrets>? secrets;

  /// Optional. SSL certificate to use for requests to GitHub Enterprise.
  final Input<String>? sslCa;

  /// The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
  final Input<String>? webhookKey;

  GithubEnterpriseConfigArgs({
    required this.appId,
    this.displayName,
    this.gheConfigId,
    this.hostUrl,
    this.location,
    this.name,
    this.peeredNetwork,
    this.project,
    this.projectId,
    this.secrets,
    this.sslCa,
    this.webhookKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gheConfigIdValue = gheConfigId;
    if (gheConfigIdValue != null) {
      map['gheConfigId'] = gheConfigIdValue;
    }
    final hostUrlValue = hostUrl;
    if (hostUrlValue != null) {
      map['hostUrl'] = hostUrlValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final peeredNetworkValue = peeredNetwork;
    if (peeredNetworkValue != null) {
      map['peeredNetwork'] = peeredNetworkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final secretsValue = secrets;
    if (secretsValue != null) {
      map['secrets'] = Input.mapOptionalInputValue<GitHubEnterpriseSecrets,
          Map<String, dynamic>>(secretsValue, (value) => value.toMap());
    }
    final sslCaValue = sslCa;
    if (sslCaValue != null) {
      map['sslCa'] = sslCaValue;
    }
    final webhookKeyValue = webhookKey;
    if (webhookKeyValue != null) {
      map['webhookKey'] = webhookKeyValue;
    }
    return map;
  }

  factory GithubEnterpriseConfigArgs.fromMap(Map<String, dynamic> map) {
    return GithubEnterpriseConfigArgs(
      appId: Input.asInput<String>(map['appId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gheConfigId: Input.asOptionalInput<String>(map['gheConfigId']),
      hostUrl: Input.asOptionalInput<String>(map['hostUrl']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      peeredNetwork: Input.asOptionalInput<String>(map['peeredNetwork']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asOptionalInput<String>(map['projectId']),
      secrets: Input.asOptionalInput<GitHubEnterpriseSecrets>(map['secrets']),
      sslCa: Input.asOptionalInput<String>(map['sslCa']),
      webhookKey: Input.asOptionalInput<String>(map['webhookKey']),
    );
  }
}
