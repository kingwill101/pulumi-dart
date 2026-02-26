// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'docker_repository_config.dart';
import 'maven_repository_config.dart';
import 'remote_repository_config.dart';
import 'repository_format.dart';
import 'repository_mode.dart';
import 'virtual_repository_config.dart';

/// The set of arguments for Repository.
class RepositoryArgs {
  /// Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package versions can be automatically deleted. Map keys are policy IDs supplied by users during policy creation. They must unique within a repository and be under 128 characters in length.
  final Input<Map<String, String>>? cleanupPolicies;

  /// Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository.
  final Input<bool>? cleanupPolicyDryRun;

  /// The user-provided description of the repository.
  final Input<String>? description;

  /// Docker repository config contains repository level configuration for the repositories of docker type.
  final Input<DockerRepositoryConfig>? dockerConfig;

  /// Optional. The format of packages that are stored in the repository.
  final Input<RepositoryFormat>? format;

  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  final Input<String>? kmsKeyName;

  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Maven repository config contains repository level configuration for the repositories of maven type.
  final Input<MavenRepositoryConfig>? mavenConfig;

  /// Optional. The mode of the repository.
  final Input<RepositoryMode>? mode;

  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final Input<String>? name;
  final Input<String>? project;

  /// Configuration specific for a Remote Repository.
  final Input<RemoteRepositoryConfig>? remoteRepositoryConfig;

  /// Required. The repository id to use for this repository.
  final Input<String> repositoryId;

  /// Configuration specific for a Virtual Repository.
  final Input<VirtualRepositoryConfig>? virtualRepositoryConfig;

  RepositoryArgs({
    this.cleanupPolicies,
    this.cleanupPolicyDryRun,
    this.description,
    this.dockerConfig,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.mavenConfig,
    this.mode,
    this.name,
    this.project,
    this.remoteRepositoryConfig,
    required this.repositoryId,
    this.virtualRepositoryConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cleanupPoliciesValue = cleanupPolicies;
    if (cleanupPoliciesValue != null) {
      map['cleanupPolicies'] = cleanupPoliciesValue;
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
      map['dockerConfig'] = Input.mapOptionalInputValue<DockerRepositoryConfig,
          Map<String, dynamic>>(dockerConfigValue, (value) => value.toMap());
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = Input.mapOptionalInputValue<RepositoryFormat, String>(
          formatValue, (value) => value.value);
    }
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
      map['mavenConfig'] = Input.mapOptionalInputValue<MavenRepositoryConfig,
          Map<String, dynamic>>(mavenConfigValue, (value) => value.toMap());
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = Input.mapOptionalInputValue<RepositoryMode, String>(
          modeValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remoteRepositoryConfigValue = remoteRepositoryConfig;
    if (remoteRepositoryConfigValue != null) {
      map['remoteRepositoryConfig'] = Input.mapOptionalInputValue<
              RemoteRepositoryConfig, Map<String, dynamic>>(
          remoteRepositoryConfigValue, (value) => value.toMap());
    }
    map['repositoryId'] = repositoryId;
    final virtualRepositoryConfigValue = virtualRepositoryConfig;
    if (virtualRepositoryConfigValue != null) {
      map['virtualRepositoryConfig'] = Input.mapOptionalInputValue<
              VirtualRepositoryConfig, Map<String, dynamic>>(
          virtualRepositoryConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      cleanupPolicies:
          Input.asOptionalInput<Map<String, String>>(map['cleanupPolicies']),
      cleanupPolicyDryRun:
          Input.asOptionalInput<bool>(map['cleanupPolicyDryRun']),
      description: Input.asOptionalInput<String>(map['description']),
      dockerConfig:
          Input.asOptionalInput<DockerRepositoryConfig>(map['dockerConfig']),
      format: Input.asOptionalInput<RepositoryFormat>(map['format']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mavenConfig:
          Input.asOptionalInput<MavenRepositoryConfig>(map['mavenConfig']),
      mode: Input.asOptionalInput<RepositoryMode>(map['mode']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      remoteRepositoryConfig: Input.asOptionalInput<RemoteRepositoryConfig>(
          map['remoteRepositoryConfig']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      virtualRepositoryConfig: Input.asOptionalInput<VirtualRepositoryConfig>(
          map['virtualRepositoryConfig']),
    );
  }
}
