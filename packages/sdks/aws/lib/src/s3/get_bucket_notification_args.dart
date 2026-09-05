// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_notification_get_bucket_notification_args_doc}
/// Arguments for getBucketNotification.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_notification_get_bucket_notification_args_doc}
class GetBucketNotificationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetBucketNotificationArgs].
  /// [bucket] Name of the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetBucketNotificationArgs({
    required this.bucket,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': ?region,
    };
  }

  factory GetBucketNotificationArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketNotificationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
