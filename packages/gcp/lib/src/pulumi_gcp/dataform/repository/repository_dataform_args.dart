// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_git_remote_settings/repository_git_remote_settings.dart';
import '../repository_workspace_compilation_overrides/repository_workspace_compilation_overrides.dart';

/// The set of arguments for Repository.
class RepositoryDataformArgs {
  /// Policy to control how the repository and its child resources are deleted. When set to `FORCE`, any child resources of this repository will also be deleted. Possible values: `DELETE`, `FORCE`. Defaults to `DELETE`.
  final pulumi.Input<String>? deletionPolicy;

  /// Optional. The repository's user-friendly name.
  final pulumi.Input<String>? displayName;

  /// Optional. If set, configures this repository to be linked to a Git remote.
  /// Structure is documented below.
  final pulumi.Input<RepositoryGitRemoteSettings>? gitRemoteSettings;

  /// Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user data in the repository and all child resources.
  /// It is not possible to add or update the encryption key after the repository is created. Example projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
  final pulumi.Input<String>? kmsKeyName;

  /// Optional. Repository user labels.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The repository's name.
  final pulumi.Input<String>? name;

  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format.
  final pulumi.Input<String>? npmrcEnvironmentVariablesSecretVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the region
  final pulumi.Input<String>? region;

  /// The service account to run workflow invocations under.
  final pulumi.Input<String>? serviceAccount;

  /// If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results.
  /// Structure is documented below.
  final pulumi.Input<RepositoryWorkspaceCompilationOverrides>?
      workspaceCompilationOverrides;

  RepositoryDataformArgs({
    this.deletionPolicy,
    this.displayName,
    this.gitRemoteSettings,
    this.kmsKeyName,
    this.labels,
    this.name,
    this.npmrcEnvironmentVariablesSecretVersion,
    this.project,
    this.region,
    this.serviceAccount,
    this.workspaceCompilationOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gitRemoteSettingsValue = gitRemoteSettings;
    if (gitRemoteSettingsValue != null) {
      map['gitRemoteSettings'] = pulumi.Input.mapOptionalInputValue<
              RepositoryGitRemoteSettings, Map<String, dynamic>>(
          gitRemoteSettingsValue, (value) => value.toMap());
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final workspaceCompilationOverridesValue = workspaceCompilationOverrides;
    if (workspaceCompilationOverridesValue != null) {
      map['workspaceCompilationOverrides'] = pulumi.Input.mapOptionalInputValue<
              RepositoryWorkspaceCompilationOverrides, Map<String, dynamic>>(
          workspaceCompilationOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RepositoryDataformArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryDataformArgs(
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      gitRemoteSettings:
          pulumi.Input.asOptionalInput<RepositoryGitRemoteSettings>(
              map['gitRemoteSettings']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      npmrcEnvironmentVariablesSecretVersion:
          pulumi.Input.asOptionalInput<String>(
              map['npmrcEnvironmentVariablesSecretVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      workspaceCompilationOverrides:
          pulumi.Input.asOptionalInput<RepositoryWorkspaceCompilationOverrides>(
              map['workspaceCompilationOverrides']),
    );
  }
}
