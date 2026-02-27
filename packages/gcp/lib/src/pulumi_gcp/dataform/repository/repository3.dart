import 'package:pulumi/pulumi.dart';
import '../repository_git_remote_settings/repository_git_remote_settings.dart';
import '../repository_workspace_compilation_overrides/repository_workspace_compilation_overrides.dart';
import 'repository_args3.dart';

/// A resource represents a Dataform Git repository
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/dataform/reference/rest/v1beta1/projects.locations.repositories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataform/docs/)
///
/// ## Example Usage
///
/// ### Dataform Repository
///
///
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/repositories/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default projects/{{project}}/locations/{{region}}/repositories/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataform/repository:Repository default {{name}}
/// ```
class Repository3 extends CustomResource {
  /// Policy to control how the repository and its child resources are deleted. When set to `FORCE`, any child resources of this repository will also be deleted. Possible values: `DELETE`, `FORCE`. Defaults to `DELETE`.
  late final Output<String?> deletionPolicy;

  /// Optional. The repository's user-friendly name.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. If set, configures this repository to be linked to a Git remote.
  /// Structure is documented below.
  late final Output<RepositoryGitRemoteSettings?> gitRemoteSettings;

  /// Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user data in the repository and all child resources.
  /// It is not possible to add or update the encryption key after the repository is created. Example projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
  late final Output<String?> kmsKeyName;

  /// Optional. Repository user labels.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The repository's name.
  late final Output<String> name;

  /// Optional. The name of the Secret Manager secret version to be used to interpolate variables into the .npmrc file for package installation operations. Must be in the format projects/*/secrets/*/versions/*. The file itself must be in a JSON format.
  late final Output<String?> npmrcEnvironmentVariablesSecretVersion;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A reference to the region
  late final Output<String?> region;

  /// The service account to run workflow invocations under.
  late final Output<String?> serviceAccount;

  /// If set, fields of workspaceCompilationOverrides override the default compilation settings that are specified in dataform.json when creating workspace-scoped compilation results.
  /// Structure is documented below.
  late final Output<RepositoryWorkspaceCompilationOverrides?>
      workspaceCompilationOverrides;

  Repository3(
    String name, {
    RepositoryArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gitRemoteSettings =
        registerOutput<RepositoryGitRemoteSettings?>('gitRemoteSettings');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.npmrcEnvironmentVariablesSecretVersion =
        registerOutput<String?>('npmrcEnvironmentVariablesSecretVersion');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
    this.workspaceCompilationOverrides =
        registerOutput<RepositoryWorkspaceCompilationOverrides?>(
            'workspaceCompilationOverrides');
  }
}
