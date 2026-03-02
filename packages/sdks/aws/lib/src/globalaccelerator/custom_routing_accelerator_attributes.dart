// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomRoutingAcceleratorAttributes {
  /// Indicates whether flow logs are enabled. Defaults to `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? flowLogsEnabled;
  /// The name of the Amazon S3 bucket for the flow logs. Required if `flow_logs_enabled` is `true`.
  final pulumi.Input<String>? flowLogsS3Bucket;
  /// The prefix for the location in the Amazon S3 bucket for the flow logs. Required if `flow_logs_enabled` is `true`.
  final pulumi.Input<String>? flowLogsS3Prefix;

  /// Creates a new [CustomRoutingAcceleratorAttributes].
  /// [flowLogsEnabled] Indicates whether flow logs are enabled. Defaults to `false`. Valid values: `true`, `false`.
  /// [flowLogsS3Bucket] The name of the Amazon S3 bucket for the flow logs. Required if `flow_logs_enabled` is `true`.
  /// [flowLogsS3Prefix] The prefix for the location in the Amazon S3 bucket for the flow logs. Required if `flow_logs_enabled` is `true`.
  CustomRoutingAcceleratorAttributes({
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
      flowLogsEnabled: map['flowLogsEnabled'] == null ? null : ((map['flowLogsEnabled'] as bool).input()).input(),
      flowLogsS3Bucket: map['flowLogsS3Bucket'] == null ? null : ((map['flowLogsS3Bucket'] as String).input()).input(),
      flowLogsS3Prefix: map['flowLogsS3Prefix'] == null ? null : ((map['flowLogsS3Prefix'] as String).input()).input(),
    );
  }
}

