// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_key_filter_response.dart';

/// Definition of NotificationFilter
class NotificationFilterResponse {
  /// A container for object key name prefix and suffix filtering rules. A container for object key name prefix and suffix filtering rules. For more information about object key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.  The same type of filter rule cannot be used more than once. For example, you cannot specify two prefix rules.
  final pulumi.Input<S3KeyFilterResponse>? s3Key;

  /// Creates a new [NotificationFilterResponse].
  /// [s3Key] A container for object key name prefix and suffix filtering rules. A container for object key name prefix and suffix filtering rules. For more information about object key name filtering, see [Configuring event notifications using object key name filtering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html) in the *Amazon S3 User Guide*.  The same type of filter rule cannot be used more than once. For example, you cannot specify two prefix rules.
  NotificationFilterResponse({
    this.s3Key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Key': ?pulumi.Input.mapOptionalInputValue<S3KeyFilterResponse, Map<String, dynamic>>(s3Key, (value) => value.toMap()),
    };
  }

  factory NotificationFilterResponse.fromMap(Map<String, dynamic> map) {
    return NotificationFilterResponse(
      s3Key: map['s3Key'] == null ? null : (S3KeyFilterResponse.fromMap((map['s3Key']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

