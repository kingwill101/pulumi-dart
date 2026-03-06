// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings {
  final pulumi.Input<String>? amazonBedrockRoleArn;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings].
  /// [amazonBedrockRoleArn] Optional.
  const DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings({
    this.amazonBedrockRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonBedrockRoleArn': ?amazonBedrockRoleArn,
    };
  }

  factory DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettingsGenerativeAiSettings(
      amazonBedrockRoleArn: (() { final guardedValue = map['amazonBedrockRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

