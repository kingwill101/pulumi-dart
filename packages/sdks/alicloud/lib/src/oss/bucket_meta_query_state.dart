// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketMetaQuery resources.
class BucketMetaQueryState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// The creation time of the metadata index database. The format is mm:ss + TIMEZONE in the YYYY-MM-DDTHH format of RFC 3339. Where YYYY-MM-DD indicates the year, month and day, T indicates the beginning of the time element, HH:mm:ss indicates the hour, minute and second, and TIMEZONE indicates the time zone.
  final pulumi.Input<String>? createTime;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketMetaQueryState].
  /// [bucket] The name of the bucket.
  /// [createTime] The creation time of the metadata index database. The format is mm:ss + TIMEZONE in the YYYY-MM-DDTHH format of RFC 3339. Where YYYY-MM-DD indicates the year, month and day, T indicates the beginning of the time element, HH:mm:ss indicates the hour, minute and second, and TIMEZONE indicates the time zone.
  /// [status] The status of the resource.
  BucketMetaQueryState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? status,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'status': ?status,
    };
  }

  factory BucketMetaQueryState.fromMap(Map<String, dynamic> map) {
    return BucketMetaQueryState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

