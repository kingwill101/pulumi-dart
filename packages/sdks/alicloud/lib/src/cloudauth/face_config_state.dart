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
    pulumi.Output<String>? bizName,
    pulumi.Output<String>? bizType,
    pulumi.Output<String>? gmtModified,
  }) :
      bizName = pulumi.Input.asOptionalInput<String>(bizName),
      bizType = pulumi.Input.asOptionalInput<String>(bizType),
      gmtModified = pulumi.Input.asOptionalInput<String>(gmtModified);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizName': ?bizName,
      'bizType': ?bizType,
      'gmtModified': ?gmtModified,
    };
  }

  factory FaceConfigState.fromMap(Map<String, dynamic> map) {
    return FaceConfigState(
      bizName: map['bizName'] == null ? null : pulumi.Output.create<String>(map['bizName'] as String),
      bizType: map['bizType'] == null ? null : pulumi.Output.create<String>(map['bizType'] as String),
      gmtModified: map['gmtModified'] == null ? null : pulumi.Output.create<String>(map['gmtModified'] as String),
    );
  }
}

