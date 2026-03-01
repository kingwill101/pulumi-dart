// ignore_for_file: unused_element, unnecessary_cast


/// Definition of S3WordsList
class S3WordsList {
  /// Property bucketName
  final String? bucketName;
  /// Property objectKey
  final String? objectKey;

  /// Creates a new [S3WordsList].
  /// [bucketName] Property bucketName
  /// [objectKey] Property objectKey
  S3WordsList({
    this.bucketName,
    this.objectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'objectKey': ?objectKey,
    };
  }

  factory S3WordsList.fromMap(Map<String, dynamic> map) {
    return S3WordsList(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      objectKey: map['objectKey'] == null ? null : map['objectKey'] as String,
    );
  }
}

