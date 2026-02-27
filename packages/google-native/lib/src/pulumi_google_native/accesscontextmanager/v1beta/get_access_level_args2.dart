// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAccessLevel.
class GetAccessLevelArgs2 {
  final Input<String>? accessLevelFormat;
  final Input<String> accessLevelId;
  final Input<String> accessPolicyId;

  GetAccessLevelArgs2({
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

  factory GetAccessLevelArgs2.fromMap(Map<String, dynamic> map) {
    return GetAccessLevelArgs2(
      accessLevelFormat:
          Input.asOptionalInput<String>(map['accessLevelFormat']),
      accessLevelId: Input.asInput<String>(map['accessLevelId']),
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
