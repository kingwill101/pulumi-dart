// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolApplicationSetting {
  /// Name of the settings group for the application settings.
  final pulumi.Input<String> settingsGroup;
  /// Status of the application settings. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String> status;

  /// Creates a new [PoolApplicationSetting].
  /// [settingsGroup] Name of the settings group for the application settings.
  /// [status] Status of the application settings. Valid values are `ENABLED` and `DISABLED`.
  const PoolApplicationSetting({
    required this.settingsGroup,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settingsGroup': settingsGroup,
      'status': status,
    };
  }

  factory PoolApplicationSetting.fromMap(Map<String, dynamic> map) {
    return PoolApplicationSetting(
      settingsGroup: pulumi.Input.fromValue(map['settingsGroup'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
