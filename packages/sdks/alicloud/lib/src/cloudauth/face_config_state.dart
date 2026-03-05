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
      bizName: (() { final guardedValue = map['bizName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bizType: (() { final guardedValue = map['bizType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gmtModified: (() { final guardedValue = map['gmtModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

