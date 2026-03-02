// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LoggingProperties
class LoggingPropertiesResponse {
  /// Property bucketName
  final pulumi.Input<String>? bucketName;
  /// Property s3KeyPrefix
  final pulumi.Input<String>? s3KeyPrefix;

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
      bucketName: map['bucketName'] == null ? null : (map['bucketName'] as String).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : (map['s3KeyPrefix'] as String).input(),
    );
  }
}

