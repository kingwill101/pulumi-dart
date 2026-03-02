// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFaceConfigsConfig {
  /// Scene name.
  final pulumi.Input<String> bizName;
  /// Scene type. **NOTE:** The biz_type cannot exceed 32 characters and can only use English letters, numbers and dashes (-).
  final pulumi.Input<String> bizType;
  /// The Update Time.
  final pulumi.Input<String> gmtUpdated;

  /// Creates a new [GetFaceConfigsConfig].
  /// [bizName] Scene name.
  /// [bizType] Scene type. **NOTE:** The biz_type cannot exceed 32 characters and can only use English letters, numbers and dashes (-).
  /// [gmtUpdated] The Update Time.
  GetFaceConfigsConfig({
    required this.bizName,
    required this.bizType,
    required this.gmtUpdated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizName': bizName,
      'bizType': bizType,
      'gmtUpdated': gmtUpdated,
    };
  }

  factory GetFaceConfigsConfig.fromMap(Map<String, dynamic> map) {
    return GetFaceConfigsConfig(
      bizName: (map['bizName'] as String).input(),
      bizType: (map['bizType'] as String).input(),
      gmtUpdated: (map['gmtUpdated'] as String).input(),
    );
  }
}

