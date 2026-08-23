// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings {
  /// The Amazon Resource Name (ARN) of the SageMaker AI model registry account. Required only to register model versions created by a different SageMaker AI Canvas AWS account than the AWS account in which SageMaker AI model registry is set up.
  final pulumi.Input<String>? crossAccountModelRegisterRoleArn;
  /// Describes whether the integration to the model registry is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings].
  /// [crossAccountModelRegisterRoleArn] The Amazon Resource Name (ARN) of the SageMaker AI model registry account. Required only to register model versions created by a different SageMaker AI Canvas AWS account than the AWS account in which SageMaker AI model registry is set up.
  /// [status] Describes whether the integration to the model registry is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  const UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings({
    this.crossAccountModelRegisterRoleArn,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountModelRegisterRoleArn': ?crossAccountModelRegisterRoleArn,
      'status': ?status,
    };
  }

  factory UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsModelRegisterSettings(
      crossAccountModelRegisterRoleArn: (() { final guardedValue = map['crossAccountModelRegisterRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
