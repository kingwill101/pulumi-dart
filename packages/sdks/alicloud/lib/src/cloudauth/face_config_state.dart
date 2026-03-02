// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FaceConfig resources.
class FaceConfigState {
  /// Scene name.
  final pulumi.Input<String>? bizName;
  /// Scene type. **NOTE:** The biz_type cannot exceed 32 characters and can only use English letters, numbers and dashes (-).
  final pulumi.Input<String>? bizType;
  /// Last Modified Date.
  final pulumi.Input<String>? gmtModified;

  /// Creates a new [FaceConfigState].
  /// [bizName] Scene name.
  /// [bizType] Scene type. **NOTE:** The biz_type cannot exceed 32 characters and can only use English letters, numbers and dashes (-).
  /// [gmtModified] Last Modified Date.
  FaceConfigState({
    this.bizName,
    this.bizType,
    this.gmtModified,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizName': ?bizName,
      'bizType': ?bizType,
      'gmtModified': ?gmtModified,
    };
  }

  factory FaceConfigState.fromMap(Map<String, dynamic> map) {
    return FaceConfigState(
      bizName: map['bizName'] == null ? null : (map['bizName'] as String).input(),
      bizType: map['bizType'] == null ? null : (map['bizType'] as String).input(),
      gmtModified: map['gmtModified'] == null ? null : (map['gmtModified'] as String).input(),
    );
  }
}

