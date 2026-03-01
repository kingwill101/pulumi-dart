// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AccessControlTranslation
class AccessControlTranslationResponse {
  /// Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the *Amazon S3 API Reference*.
  final String? owner;

  /// Creates a new [AccessControlTranslationResponse].
  /// [owner] Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the *Amazon S3 API Reference*.
  AccessControlTranslationResponse({
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner': ?owner,
    };
  }

  factory AccessControlTranslationResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlTranslationResponse(
      owner: map['owner'] == null ? null : map['owner'] as String,
    );
  }
}

