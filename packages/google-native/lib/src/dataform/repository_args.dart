// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_remote_settings.dart';
import 'workspace_compilation_overrides.dart';

/// {@template pulumi_dataform_v1beta1_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_repository_args_doc}
class RepositoryArgs {
  /// Optional. The repository's user-friendly name.
  final pulumi.Input<String>? displayName;

  /// Optional. If set, configures this repository to be linked to a Git remote.
  final pulumi.Input<GitRemoteSettings>? gitRemoteSettings;

  /// Optional. Repository user labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  final pulumi.Input<String>? npmrcEnvironmentVariablesSecretVersion;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name.
  final pulumi.Input<String> repositoryId;

  /// Optional. The service account to run workflow invocations under.
  final pulumi.Input<String>? serviceAccount;

  /// Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  final pulumi.Input<bool>? setAuthenticatedUserAdmin;

  /// Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  final pulumi.Input<WorkspaceCompilationOverrides>?
      workspaceCompilationOverrides;

  /// Creates a new [RepositoryArgs].
  /// [displayName] Optional. The repository's user-friendly name.
  /// [gitRemoteSettings] Optional. If set, configures this repository to be linked to a Git remote.
  /// [labels] Optional. Repository user labels.
  /// [location] Optional.
  /// [npmrcEnvironmentVariablesSecretVersion] Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  /// [project] Optional.
  /// [repositoryId] Required. The ID to use for the repository, which will become the final component of the repository's resource name.
  /// [serviceAccount] Optional. The service account to run workflow invocations under.
  /// [setAuthenticatedUserAdmin] Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  /// [workspaceCompilationOverrides] Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  RepositoryArgs({
    String? displayName,
    GitRemoteSettings? gitRemoteSettings,
    Map<String, String>? labels,
    String? location,
    String? npmrcEnvironmentVariablesSecretVersion,
    String? project,
    required String repositoryId,
    String? serviceAccount,
    bool? setAuthenticatedUserAdmin,
    WorkspaceCompilationOverrides? workspaceCompilationOverrides,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        gitRemoteSettings =
            pulumi.Input.asOptionalInput<GitRemoteSettings>(gitRemoteSettings),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        npmrcEnvironmentVariablesSecretVersion =
            pulumi.Input.asOptionalInput<String>(
                npmrcEnvironmentVariablesSecretVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositoryId = pulumi.Input.asInput<String>(repositoryId),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        setAuthenticatedUserAdmin =
            pulumi.Input.asOptionalInput<bool>(setAuthenticatedUserAdmin),
        workspaceCompilationOverrides =
            pulumi.Input.asOptionalInput<WorkspaceCompilationOverrides>(
                workspaceCompilationOverrides);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gitRemoteSettingsValue = gitRemoteSettings;
    if (gitRemoteSettingsValue != null) {
      map['gitRemoteSettings'] = pulumi.Input.mapOptionalInputValue<
              GitRemoteSettings, Map<String, dynamic>>(
          gitRemoteSettingsValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final npmrcEnvironmentVariablesSecretVersionValue =
        npmrcEnvironmentVariablesSecretVersion;
    if (npmrcEnvironmentVariablesSecretVersionValue != null) {
      map['npmrcEnvironmentVariablesSecretVersion'] =
          npmrcEnvironmentVariablesSecretVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final setAuthenticatedUserAdminValue = setAuthenticatedUserAdmin;
    if (setAuthenticatedUserAdminValue != null) {
      map['setAuthenticatedUserAdmin'] = setAuthenticatedUserAdminValue;
    }
    final workspaceCompilationOverridesValue = workspaceCompilationOverrides;
    if (workspaceCompilationOverridesValue != null) {
      map['workspaceCompilationOverrides'] = pulumi.Input.mapOptionalInputValue<
              WorkspaceCompilationOverrides, Map<String, dynamic>>(
          workspaceCompilationOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      gitRemoteSettings: map['gitRemoteSettings'] == null
          ? null
          : GitRemoteSettings.fromMap(
              (map['gitRemoteSettings'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      npmrcEnvironmentVariablesSecretVersion:
          map['npmrcEnvironmentVariablesSecretVersion'] == null
              ? null
              : map['npmrcEnvironmentVariablesSecretVersion'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      setAuthenticatedUserAdmin: map['setAuthenticatedUserAdmin'] == null
          ? null
          : map['setAuthenticatedUserAdmin'] as bool,
      workspaceCompilationOverrides:
          map['workspaceCompilationOverrides'] == null
              ? null
              : WorkspaceCompilationOverrides.fromMap(
                  (map['workspaceCompilationOverrides'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
