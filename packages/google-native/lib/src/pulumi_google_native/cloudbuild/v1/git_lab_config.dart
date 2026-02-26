import 'package:pulumi/pulumi.dart';
import 'git_lab_config_args.dart';
import 'git_lab_enterprise_config_response.dart';
import 'git_lab_repository_id_response.dart';
import 'git_lab_secrets_response.dart';

/// Creates a new `GitLabConfig`. This API is experimental
class GitLabConfig extends CustomResource {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  late final Output<List<GitLabRepositoryIdResponse>> connectedRepositories;

  /// Time when the config was created.
  late final Output<String> createTime;

  /// Optional. GitLabEnterprise config.
  late final Output<GitLabEnterpriseConfigResponse> enterpriseConfig;

  /// Optional. The ID to use for the GitLabConfig, which will become the final component of the GitLabConfig’s resource name. gitlab_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
  late final Output<String?> gitlabConfigId;
  late final Output<String> location;

  /// The resource name for the config.
  late final Output<String> name;
  late final Output<String> project;

  /// Secret Manager secrets needed by the config.
  late final Output<GitLabSecretsResponse> secrets;

  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  late final Output<String> username;

  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  late final Output<String> webhookKey;

  GitLabConfig(
    String name, {
    GitLabConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1:GitLabConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectedRepositories =
        Output.createUnknown<List<GitLabRepositoryIdResponse>>();
    this.createTime = Output.createUnknown<String>();
    this.enterpriseConfig =
        Output.createUnknown<GitLabEnterpriseConfigResponse>();
    this.gitlabConfigId = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.secrets = Output.createUnknown<GitLabSecretsResponse>();
    this.username = Output.createUnknown<String>();
    this.webhookKey = Output.createUnknown<String>();
  }
}
