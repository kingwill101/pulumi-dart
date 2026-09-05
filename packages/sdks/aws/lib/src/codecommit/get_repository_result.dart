// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRepository.
class GetRepositoryResult {
  /// ARN of the repository.
  final String? arn;
  /// URL to use for cloning the repository over HTTPS.
  final String? cloneUrlHttp;
  /// URL to use for cloning the repository over SSH.
  final String? cloneUrlSsh;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the encryption key.
  final String? kmsKeyId;
  final String? region;
  /// ID of the repository.
  final String? repositoryId;
  final String? repositoryName;

  /// Creates a new [GetRepositoryResult].
  /// [arn] ARN of the repository.
  /// [cloneUrlHttp] URL to use for cloning the repository over HTTPS.
  /// [cloneUrlSsh] URL to use for cloning the repository over SSH.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] The ID of the encryption key.
  /// [region] Optional.
  /// [repositoryId] ID of the repository.
  /// [repositoryName] Optional.
  const GetRepositoryResult({
    this.arn,
    this.cloneUrlHttp,
    this.cloneUrlSsh,
    this.id,
    this.kmsKeyId,
    this.region,
    this.repositoryId,
    this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloneUrlHttp': ?cloneUrlHttp,
      'cloneUrlSsh': ?cloneUrlSsh,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'repositoryId': ?repositoryId,
      'repositoryName': ?repositoryName,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloneUrlHttp: (() { final guardedValue = map['cloneUrlHttp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloneUrlSsh: (() { final guardedValue = map['cloneUrlSsh']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
