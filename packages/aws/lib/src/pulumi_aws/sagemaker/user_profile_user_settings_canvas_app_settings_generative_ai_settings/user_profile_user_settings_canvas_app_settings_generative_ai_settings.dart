// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings {
  final String? amazonBedrockRoleArn;

  UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings({
    this.amazonBedrockRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amazonBedrockRoleArnValue = amazonBedrockRoleArn;
    if (amazonBedrockRoleArnValue != null) {
      map['amazonBedrockRoleArn'] = amazonBedrockRoleArnValue;
    }
    return map;
  }

  factory UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsGenerativeAiSettings(
      amazonBedrockRoleArn: map['amazonBedrockRoleArn'] == null
          ? null
          : map['amazonBedrockRoleArn'] as String,
    );
  }
}
