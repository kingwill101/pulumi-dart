// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AccessControlTranslation
class AccessControlTranslationResponse {
  /// Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the *Amazon S3 API Reference*.
  final pulumi.Input<String>? owner;

  /// Creates a new [AccessControlTranslationResponse].
  /// [owner] Specifies the replica ownership. For default and valid values, see [PUT bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) in the *Amazon S3 API Reference*.
  const AccessControlTranslationResponse({
    this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'owner': ?owner,
    };
  }

  factory AccessControlTranslationResponse.fromMap(Map<String, dynamic> map) {
    return AccessControlTranslationResponse(
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

