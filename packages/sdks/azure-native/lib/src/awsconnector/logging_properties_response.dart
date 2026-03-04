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
  LoggingPropertiesResponse({this.bucketName, this.s3KeyPrefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      's3KeyPrefix': ?s3KeyPrefix,
    };
  }

  factory LoggingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoggingPropertiesResponse(
      bucketName: (() {
        final guardedValue = map['bucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3KeyPrefix: (() {
        final guardedValue = map['s3KeyPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
