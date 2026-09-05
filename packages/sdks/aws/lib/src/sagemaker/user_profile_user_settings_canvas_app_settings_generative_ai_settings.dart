// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings {
  final pulumi.Input<String?>? amazonBedrockRoleArn;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings].
  /// [amazonBedrockRoleArn] Optional.
  const UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings({
    this.amazonBedrockRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonBedrockRoleArn': ?amazonBedrockRoleArn,
    };
  }

  factory UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings(
      amazonBedrockRoleArn: (() { final guardedValue = map['amazonBedrockRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
