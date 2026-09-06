// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of S3WordsList
class S3WordsListResponse {
  /// Property bucketName
  final pulumi.Input<String?>? bucketName;
  /// Property objectKey
  final pulumi.Input<String?>? objectKey;

  /// Creates a new [S3WordsListResponse].
  /// [bucketName] Property bucketName
  /// [objectKey] Property objectKey
  const S3WordsListResponse({
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
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectKey: (() { final guardedValue = map['objectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
