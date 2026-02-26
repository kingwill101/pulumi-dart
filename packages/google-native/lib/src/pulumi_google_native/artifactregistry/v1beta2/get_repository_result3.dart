// ignore_for_file: unused_element, unnecessary_cast

import 'maven_repository_config_response2.dart';

/// Result data returned by getRepository.
class GetRepositoryResult3 {
  /// The time when the repository was created.
  final String createTime;

  /// The user-provided description of the repository.
  final String description;

  /// Optional. The format of packages that are stored in the repository.
  final String format;

  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  final String kmsKeyName;

  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  final Map<String, String> labels;

  /// Maven repository config contains repository level configuration for the repositories of maven type.
  final MavenRepositoryConfigResponse2 mavenConfig;

  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  final String name;

  /// If set, the repository satisfies physical zone separation.
  final bool satisfiesPzs;

  /// The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  final String sizeBytes;

  /// The time when the repository was last updated.
  final String updateTime;

  GetRepositoryResult3({
    required this.createTime,
    required this.description,
    required this.format,
    required this.kmsKeyName,
    required this.labels,
    required this.mavenConfig,
    required this.name,
    required this.satisfiesPzs,
    required this.sizeBytes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['format'] = format;
    map['kmsKeyName'] = kmsKeyName;
    map['labels'] = labels;
    map['mavenConfig'] = mavenConfig.toMap();
    map['name'] = name;
    map['satisfiesPzs'] = satisfiesPzs;
    map['sizeBytes'] = sizeBytes;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRepositoryResult3.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult3(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      format: map['format'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mavenConfig: MavenRepositoryConfigResponse2.fromMap(
          (map['mavenConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      sizeBytes: map['sizeBytes'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
