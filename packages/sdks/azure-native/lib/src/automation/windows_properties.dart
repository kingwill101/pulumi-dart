// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows specific update configuration.
class WindowsProperties {
  /// KB numbers excluded from the software update configuration.
  final pulumi.Input<List<String>>? excludedKbNumbers;
  /// KB numbers included from the software update configuration.
  final pulumi.Input<List<String>>? includedKbNumbers;
  /// Update classification included in the software update configuration. A comma separated string with required values
  final pulumi.Input<String>? includedUpdateClassifications;
  /// Reboot setting for the software update configuration.
  final pulumi.Input<String>? rebootSetting;

  /// Creates a new [WindowsProperties].
  /// [excludedKbNumbers] KB numbers excluded from the software update configuration.
  /// [includedKbNumbers] KB numbers included from the software update configuration.
  /// [includedUpdateClassifications] Update classification included in the software update configuration. A comma separated string with required values
  /// [rebootSetting] Reboot setting for the software update configuration.
  WindowsProperties({
    this.excludedKbNumbers,
    this.includedKbNumbers,
    this.includedUpdateClassifications,
    this.rebootSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedKbNumbers': ?excludedKbNumbers,
      'includedKbNumbers': ?includedKbNumbers,
      'includedUpdateClassifications': ?includedUpdateClassifications,
      'rebootSetting': ?rebootSetting,
    };
  }

  factory WindowsProperties.fromMap(Map<String, dynamic> map) {
    return WindowsProperties(
      excludedKbNumbers: (() { final guardedValue = map['excludedKbNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedKbNumbers: (() { final guardedValue = map['includedKbNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedUpdateClassifications: (() { final guardedValue = map['includedUpdateClassifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rebootSetting: (() { final guardedValue = map['rebootSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

