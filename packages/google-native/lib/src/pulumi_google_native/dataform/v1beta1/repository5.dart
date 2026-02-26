import 'package:pulumi/pulumi.dart';
import 'git_remote_settings_response.dart';
import 'repository_args5.dart';
import 'workspace_compilation_overrides_response.dart';

/// Creates a new Repository in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Repository5 extends CustomResource {
  /// Optional. The repository's user-friendly name.
  late final Output<String> displayName;

  /// Optional. If set, configures this repository to be linked to a Git remote.
  late final Output<GitRemoteSettingsResponse> gitRemoteSettings;

  /// Optional. Repository user labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The repository's name.
  late final Output<String> name;

  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  late final Output<String> npmrcEnvironmentVariablesSecretVersion;
  late final Output<String> project;

  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name.
  late final Output<String> repositoryId;

  /// Optional. The service account to run workflow invocations under.
  late final Output<String> serviceAccount;

  /// Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  late final Output<bool> setAuthenticatedUserAdmin;

  /// Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  late final Output<WorkspaceCompilationOverridesResponse>
      workspaceCompilationOverrides;

  Repository5(
    String name, {
    RepositoryArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataform/v1beta1:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = Output.createUnknown<String>();
    this.gitRemoteSettings = Output.createUnknown<GitRemoteSettingsResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.npmrcEnvironmentVariablesSecretVersion =
        Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.repositoryId = Output.createUnknown<String>();
    this.serviceAccount = Output.createUnknown<String>();
    this.setAuthenticatedUserAdmin = Output.createUnknown<bool>();
    this.workspaceCompilationOverrides =
        Output.createUnknown<WorkspaceCompilationOverridesResponse>();
  }
}
