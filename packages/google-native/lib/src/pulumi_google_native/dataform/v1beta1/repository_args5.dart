// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'git_remote_settings.dart';
import 'workspace_compilation_overrides.dart';

/// The set of arguments for Repository.
class RepositoryArgs5 {
  /// Optional. The repository's user-friendly name.
  final Input<String>? displayName;

  /// Optional. If set, configures this repository to be linked to a Git remote.
  final Input<GitRemoteSettings>? gitRemoteSettings;

  /// Optional. Repository user labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format `projects/*/secrets/*/versions/*`. The file itself must be in a JSON format.
  final Input<String>? npmrcEnvironmentVariablesSecretVersion;
  final Input<String>? project;

  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name.
  final Input<String> repositoryId;

  /// Optional. The service account to run workflow invocations under.
  final Input<String>? serviceAccount;

  /// Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.admin role on the created repository. To modify access to the created repository later apply setIamPolicy from https://cloud.google.com/dataform/reference/rest#rest-resource:-v1beta1.projects.locations.repositories
  final Input<bool>? setAuthenticatedUserAdmin;

  /// Optional. If set, fields of `workspace_compilation_overrides` override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results. See documentation for `WorkspaceCompilationOverrides` for more information.
  final Input<WorkspaceCompilationOverrides>? workspaceCompilationOverrides;

  RepositoryArgs5({
    this.displayName,
    this.gitRemoteSettings,
    this.labels,
    this.location,
    this.npmrcEnvironmentVariablesSecretVersion,
    this.project,
    required this.repositoryId,
    this.serviceAccount,
    this.setAuthenticatedUserAdmin,
    this.workspaceCompilationOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gitRemoteSettingsValue = gitRemoteSettings;
    if (gitRemoteSettingsValue != null) {
      map['gitRemoteSettings'] =
          Input.mapOptionalInputValue<GitRemoteSettings, Map<String, dynamic>>(
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
      map['workspaceCompilationOverrides'] = Input.mapOptionalInputValue<
              WorkspaceCompilationOverrides, Map<String, dynamic>>(
          workspaceCompilationOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RepositoryArgs5.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs5(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gitRemoteSettings:
          Input.asOptionalInput<GitRemoteSettings>(map['gitRemoteSettings']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      npmrcEnvironmentVariablesSecretVersion: Input.asOptionalInput<String>(
          map['npmrcEnvironmentVariablesSecretVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      setAuthenticatedUserAdmin:
          Input.asOptionalInput<bool>(map['setAuthenticatedUserAdmin']),
      workspaceCompilationOverrides:
          Input.asOptionalInput<WorkspaceCompilationOverrides>(
              map['workspaceCompilationOverrides']),
    );
  }
}
