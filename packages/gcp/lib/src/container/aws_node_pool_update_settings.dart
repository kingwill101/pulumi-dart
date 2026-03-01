// ignore_for_file: unused_element, unnecessary_cast

import 'aws_node_pool_update_settings_surge_settings.dart';

class AwsNodePoolUpdateSettings {
  /// Optional. Settings for surge update.
  final AwsNodePoolUpdateSettingsSurgeSettings? surgeSettings;

  /// Creates a new [AwsNodePoolUpdateSettings].
  /// [surgeSettings] Optional. Settings for surge update.
  AwsNodePoolUpdateSettings({this.surgeSettings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'surgeSettings': ?surgeSettings == null ? null : surgeSettings!.toMap(),
    };
  }

  factory AwsNodePoolUpdateSettings.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolUpdateSettings(
      surgeSettings: map['surgeSettings'] == null
          ? null
          : AwsNodePoolUpdateSettingsSurgeSettings.fromMap(
              (map['surgeSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
