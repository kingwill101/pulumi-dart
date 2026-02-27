// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccessLevel.
class GetAccessLevelArgs {
  final pulumi.Input<String>? accessLevelFormat;
  final pulumi.Input<String> accessLevelId;
  final pulumi.Input<String> accessPolicyId;

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
          pulumi.Input.asOptionalInput<String>(map['accessLevelFormat']),
      accessLevelId: pulumi.Input.asInput<String>(map['accessLevelId']),
      accessPolicyId: pulumi.Input.asInput<String>(map['accessPolicyId']),
    );
  }
}
