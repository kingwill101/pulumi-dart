// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelLoggingInfoS3 {
  /// Name of the Amazon S3 bucket that receives the logs.
  final pulumi.Input<String?>? bucket;
  /// Whether the Amazon S3 destination is enabled.
  ///
  /// The following arguments are optional:
  final pulumi.Input<bool> enabled;
  /// Prefix applied to the Amazon S3 log object keys.
  final pulumi.Input<String?>? prefix;

  /// Creates a new [ChannelLoggingInfoS3].
  /// [bucket] Name of the Amazon S3 bucket that receives the logs.
  /// [enabled] Whether the Amazon S3 destination is enabled.
  /// [prefix] Prefix applied to the Amazon S3 log object keys.
  const ChannelLoggingInfoS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': enabled,
      'prefix': ?prefix,
    };
  }

  factory ChannelLoggingInfoS3.fromMap(Map<String, dynamic> map) {
    return ChannelLoggingInfoS3(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
