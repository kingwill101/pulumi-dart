// ignore_for_file: unused_element, unnecessary_cast


class UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings {
  final String? amazonBedrockRoleArn;

  /// Creates a new [UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings].
  /// [amazonBedrockRoleArn] Optional.
  UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings({
    this.amazonBedrockRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonBedrockRoleArn': ?amazonBedrockRoleArn,
    };
  }

  factory UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings(
      amazonBedrockRoleArn: map['amazonBedrockRoleArn'] == null ? null : map['amazonBedrockRoleArn'] as String,
    );
  }
}

