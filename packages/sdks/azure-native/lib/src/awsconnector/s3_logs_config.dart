// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_owner_access_enum_value.dart';
import 'logs_config_status_type_enum_value.dart';

/// Definition of S3LogsConfig
class S3LogsConfig {
  /// Property bucketOwnerAccess
  final pulumi.Input<BucketOwnerAccessEnumValue>? bucketOwnerAccess;

  /// &lt;p&gt; Set to true if you do not want your S3 build log output encrypted. By default S3 build logs are encrypted. &lt;/p&gt;
  final pulumi.Input<bool>? encryptionDisabled;

  /// &lt;p&gt; The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is &lt;code&gt;my-bucket&lt;/code&gt;, and your path prefix is &lt;code&gt;build-log&lt;/code&gt;, then acceptable formats are &lt;code&gt;my-bucket/build-log&lt;/code&gt; or &lt;code&gt;arn:aws:s3:::my-bucket/build-log&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<String>? location;

  /// &lt;p&gt;The current status of the S3 build logs. Valid values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt;: S3 build logs are enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt;: S3 build logs are not enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<LogsConfigStatusTypeEnumValue>? status;

  /// Creates a new [S3LogsConfig].
  /// [bucketOwnerAccess] Property bucketOwnerAccess
  /// [encryptionDisabled] &lt;p&gt; Set to true if you do not want your S3 build log output encrypted. By default S3 build logs are encrypted. &lt;/p&gt;
  /// [location] &lt;p&gt; The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket name is &lt;code&gt;my-bucket&lt;/code&gt;, and your path prefix is &lt;code&gt;build-log&lt;/code&gt;, then acceptable formats are &lt;code&gt;my-bucket/build-log&lt;/code&gt; or &lt;code&gt;arn:aws:s3:::my-bucket/build-log&lt;/code&gt;. &lt;/p&gt;
  /// [status] &lt;p&gt;The current status of the S3 build logs. Valid values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt;: S3 build logs are enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt;: S3 build logs are not enabled for this build project.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  S3LogsConfig({
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketOwnerAccess':
          ?pulumi.Input.mapOptionalInputValue<
            BucketOwnerAccessEnumValue,
            Map<String, dynamic>
          >(bucketOwnerAccess, (value) => value.toMap()),
      'encryptionDisabled': ?encryptionDisabled,
      'location': ?location,
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            LogsConfigStatusTypeEnumValue,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
    };
  }

  factory S3LogsConfig.fromMap(Map<String, dynamic> map) {
    return S3LogsConfig(
      bucketOwnerAccess: (() {
        final guardedValue = map['bucketOwnerAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketOwnerAccessEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      encryptionDisabled: (() {
        final guardedValue = map['encryptionDisabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogsConfigStatusTypeEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
