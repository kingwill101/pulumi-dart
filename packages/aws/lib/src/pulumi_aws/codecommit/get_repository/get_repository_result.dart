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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['cloneUrlHttp'] = cloneUrlHttp;
    map['cloneUrlSsh'] = cloneUrlSsh;
    map['id'] = id;
    map['kmsKeyId'] = kmsKeyId;
    map['region'] = region;
    map['repositoryId'] = repositoryId;
    map['repositoryName'] = repositoryName;
    return map;
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
