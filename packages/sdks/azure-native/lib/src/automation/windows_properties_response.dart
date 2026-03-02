// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows specific update configuration.
class WindowsPropertiesResponse {
  /// KB numbers excluded from the software update configuration.
  final pulumi.Input<List<String>>? excludedKbNumbers;
  /// KB numbers included from the software update configuration.
  final pulumi.Input<List<String>>? includedKbNumbers;
  /// Update classification included in the software update configuration. A comma separated string with required values
  final pulumi.Input<String>? includedUpdateClassifications;
  /// Reboot setting for the software update configuration.
  final pulumi.Input<String>? rebootSetting;

  /// Creates a new [WindowsPropertiesResponse].
  /// [excludedKbNumbers] KB numbers excluded from the software update configuration.
  /// [includedKbNumbers] KB numbers included from the software update configuration.
  /// [includedUpdateClassifications] Update classification included in the software update configuration. A comma separated string with required values
  /// [rebootSetting] Reboot setting for the software update configuration.
  WindowsPropertiesResponse({
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

  factory WindowsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WindowsPropertiesResponse(
      excludedKbNumbers: map['excludedKbNumbers'] == null ? null : ((map['excludedKbNumbers']! as List).cast<String>()).input(),
      includedKbNumbers: map['includedKbNumbers'] == null ? null : ((map['includedKbNumbers']! as List).cast<String>()).input(),
      includedUpdateClassifications: map['includedUpdateClassifications'] == null ? null : (map['includedUpdateClassifications']! as String).input(),
      rebootSetting: map['rebootSetting'] == null ? null : (map['rebootSetting']! as String).input(),
    );
  }
}

