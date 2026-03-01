// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudauth_face_config_face_config_args_doc}
/// The set of arguments for FaceConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudauth_face_config_face_config_args_doc}
class FaceConfigArgs {
  /// Scene name.
  final pulumi.Input<String> bizName;
  /// Scene type. **NOTE:** The biz_type cannot exceed 32 characters and can only use English letters, numbers and dashes (-).
  final pulumi.Input<String> bizType;

  /// Creates a new [FaceConfigArgs].
  /// [bizName] Scene name.
  /// [bizType] Scene type. **NOTE:** The biz_type cannot exceed 32 characters and can only use English letters, numbers and dashes (-).
  FaceConfigArgs({
    required pulumi.Output<String> bizName,
    required pulumi.Output<String> bizType,
  }) :
      bizName = pulumi.Input.asInput<String>(bizName),
      bizType = pulumi.Input.asInput<String>(bizType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bizName': bizName,
      'bizType': bizType,
    };
  }

  factory FaceConfigArgs.fromMap(Map<String, dynamic> map) {
    return FaceConfigArgs(
      bizName: pulumi.Output.create<String>(map['bizName'] as String),
      bizType: pulumi.Output.create<String>(map['bizType'] as String),
    );
  }
}

