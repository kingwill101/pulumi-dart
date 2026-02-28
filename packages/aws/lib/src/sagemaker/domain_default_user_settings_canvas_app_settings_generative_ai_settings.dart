// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings {
  final String? amazonBedrockRoleArn;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings].
  /// [amazonBedrockRoleArn] Optional.
  DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings({
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

  factory DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings(
      amazonBedrockRoleArn: map['amazonBedrockRoleArn'] == null
          ? null
          : map['amazonBedrockRoleArn'] as String,
    );
  }
}
