import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_cleanup_policy/repository_cleanup_policy.dart';
import '../repository_docker_config/repository_docker_config.dart';
import '../repository_maven_config/repository_maven_config.dart';
import '../repository_remote_repository_config/repository_remote_repository_config.dart';
import '../repository_virtual_repository_config/repository_virtual_repository_config.dart';
import '../repository_vulnerability_scanning_config/repository_vulnerability_scanning_config.dart';
import 'repository_args.dart';

/// A repository for storing artifacts
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/artifact-registry/docs/overview)
///
/// ## Example Usage
///
/// ### Artifact Registry Repository Basic
///
///
///
/// ### Artifact Registry Repository Multi Region
///
///
///
/// ### Artifact Registry Repository Docker
///
///
///
/// ### Artifact Registry Repository Cmek
///
///
///
/// ### Artifact Registry Repository Virtual
///
///
///
/// ### Artifact Registry Repository Remote
///
///
///
/// ### Artifact Registry Repository Remote Apt
///
///
///
/// ### Artifact Registry Repository Remote Yum
///
///
///
/// ### Artifact Registry Repository Cleanup
///
///
///
/// ### Artifact Registry Repository Remote Dockerhub Auth
///
///
///
/// ### Artifact Registry Repository Remote Docker Custom With Auth
///
///
///
/// ### Artifact Registry Repository Remote Maven Custom With Auth
///
///
///
/// ### Artifact Registry Repository Remote Npm Custom With Auth
///
///
///
/// ### Artifact Registry Repository Remote Python Custom With Auth
///
///
///
/// ### Artifact Registry Repository Remote Common Repository With Docker
///
///
///
/// ### Artifact Registry Repository Remote Common Repository With Artifact Registry Uri
///
///
///
/// ### Artifact Registry Repository Remote Common Repository With Custom Upstream
///
///
///
/// ### Artifact Registry Repository Vulnerability Scanning
///
///
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
///
/// * `{{project}}/{{location}}/{{repository_id}}`
///
/// * `{{location}}/{{repository_id}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repository:Repository default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repository:Repository default {{project}}/{{location}}/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repository:Repository default {{location}}/{{repository_id}}
/// ```
class Repository extends pulumi.CustomResource {
  /// Cleanup policies for this repository. Cleanup policies indicate when
  /// certain package versions can be automatically deleted.
  /// Map keys are policy IDs supplied by users during policy creation. They must
  /// unique within a repository and be under 128 characters in length.
  /// Structure is documented below.
  late final pulumi.Output<List<RepositoryCleanupPolicy>?> cleanupPolicies;

  /// If true, the cleanup pipeline is prevented from deleting versions in this
  /// repository.
  late final pulumi.Output<bool?> cleanupPolicyDryRun;

  /// The time when the repository was created.
  late final pulumi.Output<String> createTime;

  /// The user-provided description of the repository.
  late final pulumi.Output<String?> description;

  /// Docker repository config contains repository level configuration for the repositories of docker type.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryDockerConfig?> dockerConfig;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The format of packages that are stored in the repository. Supported formats
  /// can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  /// You can only create alpha formats if you are a member of the
  /// [alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  late final pulumi.Output<String> format;

  /// The Cloud KMS resource name of the customer managed encryption key that’s
  /// used to encrypt the contents of the Repository. Has the form:
  /// `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
  /// This value may not be changed after the Repository has been created.
  late final pulumi.Output<String?> kmsKeyName;

  /// Labels with user-defined metadata.
  /// This field may contain up to 64 entries. Label keys and values may be no
  /// longer than 63 characters. Label keys must begin with a lowercase letter
  /// and may only contain lowercase letters, numeric characters, underscores,
  /// and dashes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values.
  late final pulumi.Output<String> location;

  /// MavenRepositoryConfig is maven related repository details.
  /// Provides additional configuration details for repositories of the maven
  /// format type.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryMavenConfig?> mavenConfig;

  /// The mode configures the repository to serve artifacts from different sources.
  /// Default value is `STANDARD_REPOSITORY`.
  /// Possible values are: `STANDARD_REPOSITORY`, `VIRTUAL_REPOSITORY`, `REMOTE_REPOSITORY`.
  late final pulumi.Output<String?> mode;

  /// The name of the repository, for example:
  /// "repo1"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The repository endpoint, for example: us-docker.pkg.dev/my-proj/my-repo.
  late final pulumi.Output<String> registryUri;

  /// Configuration specific for a Remote Repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryRemoteRepositoryConfig?>
      remoteRepositoryConfig;

  /// The last part of the repository name, for example:
  /// "repo1"
  late final pulumi.Output<String> repositoryId;

  /// The time when the repository was last updated.
  late final pulumi.Output<String> updateTime;

  /// Configuration specific for a Virtual Repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryVirtualRepositoryConfig?>
      virtualRepositoryConfig;

  /// Configuration for vulnerability scanning of artifacts stored in this repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryVulnerabilityScanningConfig>
      vulnerabilityScanningConfig;

  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cleanupPolicies =
        registerOutput<List<RepositoryCleanupPolicy>?>('cleanupPolicies');
    this.cleanupPolicyDryRun = registerOutput<bool?>('cleanupPolicyDryRun');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dockerConfig = registerOutput<RepositoryDockerConfig?>('dockerConfig');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.format = registerOutput<String>('format');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mavenConfig = registerOutput<RepositoryMavenConfig?>('mavenConfig');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.registryUri = registerOutput<String>('registryUri');
    this.remoteRepositoryConfig =
        registerOutput<RepositoryRemoteRepositoryConfig?>(
            'remoteRepositoryConfig');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualRepositoryConfig =
        registerOutput<RepositoryVirtualRepositoryConfig?>(
            'virtualRepositoryConfig');
    this.vulnerabilityScanningConfig =
        registerOutput<RepositoryVulnerabilityScanningConfig>(
            'vulnerabilityScanningConfig');
  }
}
