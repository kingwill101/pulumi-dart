// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_owner_access_enum_value_response.dart';
import 'logs_config_status_type_enum_value_response.dart';

/// Definition of S3LogsConfig
class S3LogsConfigResponse {
  /// Property bucketOwnerAccess
  final pulumi.Input<BucketOwnerAccessEnumValueResponse>? bucketOwnerAccess;
  /// <p> Set to true if you do not want your S3 build log output encrypted. By default S3 build logs are encrypted. </p>
  final pulumi.Input<bool>? encryptionDisabled;
  /// <p> The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is <code>my-bucket</code>, and your path prefix is <code>build-log</code>, then acceptable formats are <code>my-bucket/build-log</code> or <code>arn:aws:s3:::my-bucket/build-log</code>. </p>
  final pulumi.Input<String>? location;
  /// <p>The current status of the S3 build logs. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: S3 build logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: S3 build logs are not enabled for this build project.</p> </li> </ul>
  final pulumi.Input<LogsConfigStatusTypeEnumValueResponse>? status;

  /// Creates a new [S3LogsConfigResponse].
  /// [bucketOwnerAccess] Property bucketOwnerAccess
  /// [encryptionDisabled] <p> Set to true if you do not want your S3 build log output encrypted. By default S3 build logs are encrypted. </p>
  /// [location] <p> The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is <code>my-bucket</code>, and your path prefix is <code>build-log</code>, then acceptable formats are <code>my-bucket/build-log</code> or <code>arn:aws:s3:::my-bucket/build-log</code>. </p>
  /// [status] <p>The current status of the S3 build logs. Valid values are:</p> <ul> <li> <p> <code>ENABLED</code>: S3 build logs are enabled for this build project.</p> </li> <li> <p> <code>DISABLED</code>: S3 build logs are not enabled for this build project.</p> </li> </ul>
  S3LogsConfigResponse({
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwnerAccess': ?pulumi.Input.mapOptionalInputValue<BucketOwnerAccessEnumValueResponse, Map<String, dynamic>>(bucketOwnerAccess, (value) => value.toMap()),
      'encryptionDisabled': ?encryptionDisabled,
      'location': ?location,
      'status': ?pulumi.Input.mapOptionalInputValue<LogsConfigStatusTypeEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory S3LogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return S3LogsConfigResponse(
      bucketOwnerAccess: map['bucketOwnerAccess'] == null ? null : (BucketOwnerAccessEnumValueResponse.fromMap((map['bucketOwnerAccess']! as Map).cast<String, dynamic>())).input(),
      encryptionDisabled: map['encryptionDisabled'] == null ? null : (map['encryptionDisabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      status: map['status'] == null ? null : (LogsConfigStatusTypeEnumValueResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

