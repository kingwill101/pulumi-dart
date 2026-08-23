// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAcceleratorAttribute {
  final pulumi.Input<bool> flowLogsEnabled;
  final pulumi.Input<String> flowLogsS3Bucket;
  final pulumi.Input<String> flowLogsS3Prefix;

  /// Creates a new [GetAcceleratorAttribute].
  /// [flowLogsEnabled] Required.
  /// [flowLogsS3Bucket] Required.
  /// [flowLogsS3Prefix] Required.
  const GetAcceleratorAttribute({
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

  factory GetAcceleratorAttribute.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorAttribute(
      flowLogsEnabled: pulumi.Input.fromValue(map['flowLogsEnabled'] as bool),
      flowLogsS3Bucket: pulumi.Input.fromValue(map['flowLogsS3Bucket'] as String),
      flowLogsS3Prefix: pulumi.Input.fromValue(map['flowLogsS3Prefix'] as String),
    );
  }
}
