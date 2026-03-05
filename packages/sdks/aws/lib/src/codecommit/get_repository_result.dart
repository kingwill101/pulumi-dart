// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRepository.
class GetRepositoryResult {
  /// ARN of the repository.
  final String arn;

  /// URL to use for cloning the repository over HTTPS.
  final String cloneUrlHttp;

  /// URL to use for cloning the repository over SSH.
  final String cloneUrlSsh;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The ID of the encryption key.
  final String kmsKeyId;
  final String region;

  /// ID of the repository.
  final String repositoryId;
  final String repositoryName;

  /// Creates a new [GetRepositoryResult].
  /// [arn] ARN of the repository.
  /// [cloneUrlHttp] URL to use for cloning the repository over HTTPS.
  /// [cloneUrlSsh] URL to use for cloning the repository over SSH.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] The ID of the encryption key.
  /// [region] Required.
  /// [repositoryId] ID of the repository.
  /// [repositoryName] Required.
  GetRepositoryResult({
    required this.arn,
    required this.cloneUrlHttp,
    required this.cloneUrlSsh,
    required this.id,
    required this.kmsKeyId,
    required this.region,
    required this.repositoryId,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'cloneUrlHttp': cloneUrlHttp,
      'cloneUrlSsh': cloneUrlSsh,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'region': region,
      'repositoryId': repositoryId,
      'repositoryName': repositoryName,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      arn: map['arn'] as String,
      cloneUrlHttp: map['cloneUrlHttp'] as String,
      cloneUrlSsh: map['cloneUrlSsh'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      region: map['region'] as String,
      repositoryId: map['repositoryId'] as String,
      repositoryName: map['repositoryName'] as String,
    );
  }
}
