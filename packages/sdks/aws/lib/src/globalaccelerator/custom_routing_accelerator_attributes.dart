// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingAcceleratorAttributes {
  /// Indicates whether flow logs are enabled. Defaults to `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool?>? flowLogsEnabled;
  /// The name of the Amazon S3 bucket for the flow logs. Required if `flowLogsEnabled` is `true`.
  final pulumi.Input<String?>? flowLogsS3Bucket;
  /// The prefix for the location in the Amazon S3 bucket for the flow logs. Required if `flowLogsEnabled` is `true`.
  final pulumi.Input<String?>? flowLogsS3Prefix;

  /// Creates a new [CustomRoutingAcceleratorAttributes].
  /// [flowLogsEnabled] Indicates whether flow logs are enabled. Defaults to `false`. Valid values: `true`, `false`.
  /// [flowLogsS3Bucket] The name of the Amazon S3 bucket for the flow logs. Required if `flowLogsEnabled` is `true`.
  /// [flowLogsS3Prefix] The prefix for the location in the Amazon S3 bucket for the flow logs. Required if `flowLogsEnabled` is `true`.
  const CustomRoutingAcceleratorAttributes({
    this.flowLogsEnabled,
    this.flowLogsS3Bucket,
    this.flowLogsS3Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowLogsEnabled': ?flowLogsEnabled,
      'flowLogsS3Bucket': ?flowLogsS3Bucket,
      'flowLogsS3Prefix': ?flowLogsS3Prefix,
    };
  }

  factory CustomRoutingAcceleratorAttributes.fromMap(Map<String, dynamic> map) {
    return CustomRoutingAcceleratorAttributes(
      flowLogsEnabled: (() { final guardedValue = map['flowLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flowLogsS3Bucket: (() { final guardedValue = map['flowLogsS3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowLogsS3Prefix: (() { final guardedValue = map['flowLogsS3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
