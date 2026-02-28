// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maven_repository_config_artifactregistry_v1beta2.dart';
import 'repository_format_artifactregistry_v1beta2.dart';

/// {@template pulumi_artifactregistry_v1beta2_repository_artifactregistry_v1beta2_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1beta2_repository_artifactregistry_v1beta2_args_doc}
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

  /// Creates a new [RepositoryArtifactregistryV1beta2Args].
  /// [description] The user-provided description of the repository.
  /// [format] Optional. The format of packages that are stored in the repository.
  /// [kmsKeyName] The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  /// [labels] Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  /// [location] Optional.
  /// [mavenConfig] Maven repository config contains repository level configuration for the repositories of maven type.
  /// [name] The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  /// [project] Optional.
  /// [repositoryId] Required. The repository id to use for this repository.
  RepositoryArtifactregistryV1beta2Args({
    String? description,
    RepositoryFormatArtifactregistryV1beta2? format,
    String? kmsKeyName,
    Map<String, String>? labels,
    String? location,
    MavenRepositoryConfigArtifactregistryV1beta2? mavenConfig,
    String? name,
    String? project,
    required String repositoryId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      format = pulumi.Input.asOptionalInput<RepositoryFormatArtifactregistryV1beta2>(format),
      kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mavenConfig = pulumi.Input.asOptionalInput<MavenRepositoryConfigArtifactregistryV1beta2>(mavenConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'format': ?pulumi.Input.mapOptionalInputValue<RepositoryFormatArtifactregistryV1beta2, String>(format, (value) => value.value),
      'kmsKeyName': ?kmsKeyName,
      'labels': ?labels,
      'location': ?location,
      'mavenConfig': ?pulumi.Input.mapOptionalInputValue<MavenRepositoryConfigArtifactregistryV1beta2, Map<String, dynamic>>(mavenConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory RepositoryArtifactregistryV1beta2Args.fromMap(Map<String, dynamic> map) {
    return RepositoryArtifactregistryV1beta2Args(
      description: map['description'] == null ? null : map['description'] as String,
      format: map['format'] == null ? null : RepositoryFormatArtifactregistryV1beta2.fromValue(map['format'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mavenConfig: map['mavenConfig'] == null ? null : MavenRepositoryConfigArtifactregistryV1beta2.fromMap((map['mavenConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}

