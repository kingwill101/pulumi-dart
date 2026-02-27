// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAccessLevel.
class GetAccessLevelArgs {
  final Input<String>? accessLevelFormat;
  final Input<String> accessLevelId;
  final Input<String> accessPolicyId;

  GetAccessLevelArgs({
    this.accessLevelFormat,
    required this.accessLevelId,
    required this.accessPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelFormatValue = accessLevelFormat;
    if (accessLevelFormatValue != null) {
      map['accessLevelFormat'] = accessLevelFormatValue;
    }
    map['accessLevelId'] = accessLevelId;
    map['accessPolicyId'] = accessPolicyId;
    return map;
  }

  factory GetAccessLevelArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessLevelArgs(
      accessLevelFormat:
          Input.asOptionalInput<String>(map['accessLevelFormat']),
      accessLevelId: Input.asInput<String>(map['accessLevelId']),
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
