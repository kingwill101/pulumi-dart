// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingAcceleratorAttribute {
  /// Whether flow logs are enabled.
  final pulumi.Input<bool> flowLogsEnabled;
  /// Name of the Amazon S3 bucket for the flow logs.
  final pulumi.Input<String> flowLogsS3Bucket;
  /// Prefix for the location in the Amazon S3 bucket for the flow logs.
  final pulumi.Input<String> flowLogsS3Prefix;

  /// Creates a new [GetCustomRoutingAcceleratorAttribute].
  /// [flowLogsEnabled] Whether flow logs are enabled.
  /// [flowLogsS3Bucket] Name of the Amazon S3 bucket for the flow logs.
  /// [flowLogsS3Prefix] Prefix for the location in the Amazon S3 bucket for the flow logs.
  const GetCustomRoutingAcceleratorAttribute({
    required this.flowLogsEnabled,
    required this.flowLogsS3Bucket,
    required this.flowLogsS3Prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowLogsEnabled': flowLogsEnabled,
      'flowLogsS3Bucket': flowLogsS3Bucket,
      'flowLogsS3Prefix': flowLogsS3Prefix,
    };
  }

  factory GetCustomRoutingAcceleratorAttribute.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorAttribute(
      flowLogsEnabled: pulumi.Input.fromValue(map['flowLogsEnabled'] as bool),
      flowLogsS3Bucket: pulumi.Input.fromValue(map['flowLogsS3Bucket'] as String),
      flowLogsS3Prefix: pulumi.Input.fromValue(map['flowLogsS3Prefix'] as String),
    );
  }
}
