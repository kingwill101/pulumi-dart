// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows operating system settings to apply to the virtual machine.
class WindowsConfiguration {
  /// If omitted, the default value is true.
  final pulumi.Input<bool?>? enableAutomaticUpdates;

  /// Creates a new [WindowsConfiguration].
  /// [enableAutomaticUpdates] If omitted, the default value is true.
  const WindowsConfiguration({
    this.enableAutomaticUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
    };
  }

  factory WindowsConfiguration.fromMap(Map<String, dynamic> map) {
    return WindowsConfiguration(
      enableAutomaticUpdates: (() { final guardedValue = map['enableAutomaticUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
