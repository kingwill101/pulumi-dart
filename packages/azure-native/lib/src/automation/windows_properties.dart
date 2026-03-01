// ignore_for_file: unused_element, unnecessary_cast


/// Windows specific update configuration.
class WindowsProperties {
  /// KB numbers excluded from the software update configuration.
  final List<String>? excludedKbNumbers;
  /// KB numbers included from the software update configuration.
  final List<String>? includedKbNumbers;
  /// Update classification included in the software update configuration. A comma separated string with required values
  final String? includedUpdateClassifications;
  /// Reboot setting for the software update configuration.
  final String? rebootSetting;

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
      excludedKbNumbers: map['excludedKbNumbers'] == null ? null : (map['excludedKbNumbers'] as List).cast<String>(),
      includedKbNumbers: map['includedKbNumbers'] == null ? null : (map['includedKbNumbers'] as List).cast<String>(),
      includedUpdateClassifications: map['includedUpdateClassifications'] == null ? null : map['includedUpdateClassifications'] as String,
      rebootSetting: map['rebootSetting'] == null ? null : map['rebootSetting'] as String,
    );
  }
}

