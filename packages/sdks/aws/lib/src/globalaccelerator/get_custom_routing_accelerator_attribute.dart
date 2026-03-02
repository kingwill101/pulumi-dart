// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingAcceleratorAttribute {
  final pulumi.Input<bool> flowLogsEnabled;
  final pulumi.Input<String> flowLogsS3Bucket;
  final pulumi.Input<String> flowLogsS3Prefix;

  /// Creates a new [GetCustomRoutingAcceleratorAttribute].
  /// [flowLogsEnabled] Required.
  /// [flowLogsS3Bucket] Required.
  /// [flowLogsS3Prefix] Required.
  GetCustomRoutingAcceleratorAttribute({
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
      flowLogsEnabled: (map['flowLogsEnabled'] as bool).input(),
      flowLogsS3Bucket: (map['flowLogsS3Bucket'] as String).input(),
      flowLogsS3Prefix: (map['flowLogsS3Prefix'] as String).input(),
    );
  }
}

