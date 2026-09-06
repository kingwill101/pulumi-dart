// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows operating system settings to apply to the virtual machine.
class WindowsConfigurationResponse {
  /// If omitted, the default value is true.
  final pulumi.Input<bool?>? enableAutomaticUpdates;

  /// Creates a new [WindowsConfigurationResponse].
  /// [enableAutomaticUpdates] If omitted, the default value is true.
  const WindowsConfigurationResponse({
    this.enableAutomaticUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
    };
  }

  factory WindowsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WindowsConfigurationResponse(
      enableAutomaticUpdates: (() { final guardedValue = map['enableAutomaticUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
