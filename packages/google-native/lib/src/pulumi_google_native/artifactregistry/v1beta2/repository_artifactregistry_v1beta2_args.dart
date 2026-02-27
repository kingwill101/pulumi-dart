// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maven_repository_config_artifactregistry_v1beta2.dart';
import 'repository_format_artifactregistry_v1beta2.dart';

/// The set of arguments for Repository.
class RepositoryArtifactregistryV1beta2Args {
  /// The user-provided description of the repository.
  final pulumi.Input<String>? description;

  /// Optional. The format of packages that are stored in the repository.
  final pulumi.Input<RepositoryFormatArtifactregistryV1beta2>? format;

  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  final pulumi.Input<String>? kmsKeyName;

  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Maven repository config contains repository level configuration for the repositories of maven type.
  final pulumi.Input<MavenRepositoryConfigArtifactregistryV1beta2>? mavenConfig;

  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. The repository id to use for this repository.
  final pulumi.Input<String> repositoryId;

  RepositoryArtifactregistryV1beta2Args({
    this.description,
    this.format,
    this.kmsKeyName,
    this.labels,
    this.location,
    this.mavenConfig,
    this.name,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = pulumi.Input.mapOptionalInputValue<
          RepositoryFormatArtifactregistryV1beta2,
          String>(formatValue, (value) => value.value);
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
      map['mavenConfig'] = pulumi.Input.mapOptionalInputValue<
          MavenRepositoryConfigArtifactregistryV1beta2,
          Map<String, dynamic>>(mavenConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory RepositoryArtifactregistryV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return RepositoryArtifactregistryV1beta2Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      format:
          pulumi.Input.asOptionalInput<RepositoryFormatArtifactregistryV1beta2>(
              map['format']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mavenConfig: pulumi.Input.asOptionalInput<
          MavenRepositoryConfigArtifactregistryV1beta2>(map['mavenConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
    );
  }
}
