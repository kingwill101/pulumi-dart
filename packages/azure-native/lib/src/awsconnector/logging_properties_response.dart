// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LoggingProperties
class LoggingPropertiesResponse {
  /// Property bucketName
  final String? bucketName;
  /// Property s3KeyPrefix
  final String? s3KeyPrefix;

  /// Creates a new [LoggingPropertiesResponse].
  /// [bucketName] Property bucketName
  /// [s3KeyPrefix] Property s3KeyPrefix
  LoggingPropertiesResponse({
    this.bucketName,
    this.s3KeyPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory LoggingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoggingPropertiesResponse(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : map['s3KeyPrefix'] as String,
    );
  }
}

