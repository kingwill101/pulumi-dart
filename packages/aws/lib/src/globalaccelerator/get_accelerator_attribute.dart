// ignore_for_file: unused_element, unnecessary_cast


class GetAcceleratorAttribute {
  final bool flowLogsEnabled;
  final String flowLogsS3Bucket;
  final String flowLogsS3Prefix;

  /// Creates a new [GetAcceleratorAttribute].
  /// [flowLogsEnabled] Required.
  /// [flowLogsS3Bucket] Required.
  /// [flowLogsS3Prefix] Required.
  GetAcceleratorAttribute({
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
      flowLogsEnabled: map['flowLogsEnabled'] as bool,
      flowLogsS3Bucket: map['flowLogsS3Bucket'] as String,
      flowLogsS3Prefix: map['flowLogsS3Prefix'] as String,
    );
  }
}

