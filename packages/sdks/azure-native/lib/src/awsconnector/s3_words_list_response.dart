// ignore_for_file: unused_element, unnecessary_cast


/// Definition of S3WordsList
class S3WordsListResponse {
  /// Property bucketName
  final String? bucketName;
  /// Property objectKey
  final String? objectKey;

  /// Creates a new [S3WordsListResponse].
  /// [bucketName] Property bucketName
  /// [objectKey] Property objectKey
  S3WordsListResponse({
    this.bucketName,
    this.objectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'objectKey': ?objectKey,
    };
  }

  factory S3WordsListResponse.fromMap(Map<String, dynamic> map) {
    return S3WordsListResponse(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      objectKey: map['objectKey'] == null ? null : map['objectKey'] as String,
    );
  }
}

