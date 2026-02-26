// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_cleanup_policy/repository_cleanup_policy.dart';
import '../repository_docker_config/repository_docker_config.dart';
import '../repository_maven_config/repository_maven_config.dart';
import '../repository_remote_repository_config/repository_remote_repository_config.dart';
import '../repository_virtual_repository_config/repository_virtual_repository_config.dart';
import '../repository_vulnerability_scanning_config/repository_vulnerability_scanning_config.dart';

/// The set of arguments for Repository.
class RepositoryArgs {
  /// Cleanup policies for this repository. Cleanup policies indicate when
  /// certain package versions can be automatically deleted.
  /// Map keys are policy IDs supplied by users during policy creation. They must
  /// unique within a repository and be under 128 characters in length.
  /// Structure is documented below.
  final Input<List<RepositoryCleanupPolicy>>? cleanupPolicies;

  /// If true, the cleanup pipeline is prevented from deleting versions in this
  /// repository.
  final Input<bool>? cleanupPolicyDryRun;

  /// The user-provided description of the repository.
  final Input<String>? description;

  /// Docker repository config contains repository level configuration for the repositories of docker type.
  /// Structure is documented below.
  final Input<RepositoryDockerConfig>? dockerConfig;

  /// The format of packages that are stored in the repository. Supported formats
  /// can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  /// You can only create alpha formats if you are a member of the
  /// [alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  final Input<String> format;

  /// The Cloud KMS resource name of the customer managed encryption key that’s
  /// used to encrypt the contents of the Repository. Has the form:
  /// `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
  /// This value may not be changed after the Repository has been created.
  final Input<String>? kmsKeyName;

  /// Labels with user-defined metadata.
  /// This field may contain up to 64 entries. Label keys and values may be no
  /// longer than 63 characters. Label keys must begin with a lowercase letter
  /// and may only contain lowercase letters, numeric characters, underscores,
  /// and dashes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are <span pulumi-lang-nodejs="`asia`" pulumi-lang-dotnet="`Asia`" pulumi-lang-go="`asia`" pulumi-lang-python="`asia`" pulumi-lang-yaml="`asia`" pulumi-lang-java="`asia`">`asia`</span>, <span pulumi-lang-nodejs="`europe`" pulumi-lang-dotnet="`Europe`" pulumi-lang-go="`europe`" pulumi-lang-python="`europe`" pulumi-lang-yaml="`europe`" pulumi-lang-java="`europe`">`europe`</span>, and <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span>.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the<span pulumi-lang-nodejs="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-dotnet="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-go="
  /// artifactregistry.getLocations
  /// " pulumi-lang-python="
  /// artifactregistry_get_locations
  /// " pulumi-lang-yaml="
  /// gcp.artifactregistry.getLocations
  /// " pulumi-lang-java="
  /// gcp.artifactregistry.getLocations
  /// ">
  /// gcp.artifactregistry.getLocations
  /// </span>data source for possible values.
  final Input<String>? location;

  /// MavenRepositoryConfig is maven related repository details.
  /// Provides additional configuration details for repositories of the maven
  /// format type.
  /// Structure is documented below.
  final Input<RepositoryMavenConfig>? mavenConfig;

  /// The mode configures the repository to serve artifacts from different sources.
  /// Default value is `STANDARD_REPOSITORY`.
  /// Possible values are: `STANDARD_REPOSITORY`, `VIRTUAL_REPOSITORY`, `REMOTE_REPOSITORY`.
  final Input<String>? mode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Configuration specific for a Remote Repository.
  /// Structure is documented below.
  final Input<RepositoryRemoteRepositoryConfig>? remoteRepositoryConfig;

  /// The last part of the repository name, for example:
  /// "repo1"
  final Input<String> repositoryId;

  /// Configuration specific for a Virtual Repository.
  /// Structure is documented below.
  final Input<RepositoryVirtualRepositoryConfig>? virtualRepositoryConfig;

  /// Configuration for vulnerability scanning of artifacts stored in this repository.
  /// Structure is documented below.
  final Input<RepositoryVulnerabilityScanningConfig>?
      vulnerabilityScanningConfig;

  RepositoryArgs({
    this.cleanupPolicies,
    this.cleanupPolicyDryRun,
    this.description,
    this.dockerConfig,
    required this.format,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.mavenConfig,
    this.mode,
    this.project,
    this.remoteRepositoryConfig,
    required this.repositoryId,
    this.virtualRepositoryConfig,
    this.vulnerabilityScanningConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cleanupPoliciesValue = cleanupPolicies;
    if (cleanupPoliciesValue != null) {
      map['cleanupPolicies'] = Input.mapOptionalInputValue<
              List<RepositoryCleanupPolicy>, List<Map<String, dynamic>>>(
          cleanupPoliciesValue,
          (value) =>
              Input.encodeList<RepositoryCleanupPolicy, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cleanupPolicyDryRunValue = cleanupPolicyDryRun;
    if (cleanupPolicyDryRunValue != null) {
      map['cleanupPolicyDryRun'] = cleanupPolicyDryRunValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dockerConfigValue = dockerConfig;
    if (dockerConfigValue != null) {
      map['dockerConfig'] = Input.mapOptionalInputValue<RepositoryDockerConfig,
          Map<String, dynamic>>(dockerConfigValue, (value) => value.toMap());
    }
    map['format'] = format;
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mavenConfigValue = mavenConfig;
    if (mavenConfigValue != null) {
      map['mavenConfig'] = Input.mapOptionalInputValue<RepositoryMavenConfig,
          Map<String, dynamic>>(mavenConfigValue, (value) => value.toMap());
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remoteRepositoryConfigValue = remoteRepositoryConfig;
    if (remoteRepositoryConfigValue != null) {
      map['remoteRepositoryConfig'] = Input.mapOptionalInputValue<
              RepositoryRemoteRepositoryConfig, Map<String, dynamic>>(
          remoteRepositoryConfigValue, (value) => value.toMap());
    }
    map['repositoryId'] = repositoryId;
    final virtualRepositoryConfigValue = virtualRepositoryConfig;
    if (virtualRepositoryConfigValue != null) {
      map['virtualRepositoryConfig'] = Input.mapOptionalInputValue<
              RepositoryVirtualRepositoryConfig, Map<String, dynamic>>(
          virtualRepositoryConfigValue, (value) => value.toMap());
    }
    final vulnerabilityScanningConfigValue = vulnerabilityScanningConfig;
    if (vulnerabilityScanningConfigValue != null) {
      map['vulnerabilityScanningConfig'] = Input.mapOptionalInputValue<
              RepositoryVulnerabilityScanningConfig, Map<String, dynamic>>(
          vulnerabilityScanningConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      cleanupPolicies: Input.asOptionalInput<List<RepositoryCleanupPolicy>>(
          map['cleanupPolicies']),
      cleanupPolicyDryRun:
          Input.asOptionalInput<bool>(map['cleanupPolicyDryRun']),
      description: Input.asOptionalInput<String>(map['description']),
      dockerConfig:
          Input.asOptionalInput<RepositoryDockerConfig>(map['dockerConfig']),
      format: Input.asInput<String>(map['format']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mavenConfig:
          Input.asOptionalInput<RepositoryMavenConfig>(map['mavenConfig']),
      mode: Input.asOptionalInput<String>(map['mode']),
      project: Input.asOptionalInput<String>(map['project']),
      remoteRepositoryConfig:
          Input.asOptionalInput<RepositoryRemoteRepositoryConfig>(
              map['remoteRepositoryConfig']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      virtualRepositoryConfig:
          Input.asOptionalInput<RepositoryVirtualRepositoryConfig>(
              map['virtualRepositoryConfig']),
      vulnerabilityScanningConfig:
          Input.asOptionalInput<RepositoryVulnerabilityScanningConfig>(
              map['vulnerabilityScanningConfig']),
    );
  }
}
