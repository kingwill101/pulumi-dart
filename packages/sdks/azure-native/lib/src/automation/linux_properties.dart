// ignore_for_file: unused_element, unnecessary_cast


/// Linux specific update configuration.
class LinuxProperties {
  /// packages excluded from the software update configuration.
  final List<String>? excludedPackageNameMasks;
  /// Update classifications included in the software update configuration.
  final String? includedPackageClassifications;
  /// packages included from the software update configuration.
  final List<String>? includedPackageNameMasks;
  /// Reboot setting for the software update configuration.
  final String? rebootSetting;

  /// Creates a new [LinuxProperties].
  /// [excludedPackageNameMasks] packages excluded from the software update configuration.
  /// [includedPackageClassifications] Update classifications included in the software update configuration.
  /// [includedPackageNameMasks] packages included from the software update configuration.
  /// [rebootSetting] Reboot setting for the software update configuration.
  LinuxProperties({
    this.excludedPackageNameMasks,
    this.includedPackageClassifications,
    this.includedPackageNameMasks,
    this.rebootSetting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedPackageNameMasks': ?excludedPackageNameMasks,
      'includedPackageClassifications': ?includedPackageClassifications,
      'includedPackageNameMasks': ?includedPackageNameMasks,
      'rebootSetting': ?rebootSetting,
    };
  }

  factory LinuxProperties.fromMap(Map<String, dynamic> map) {
    return LinuxProperties(
      excludedPackageNameMasks: map['excludedPackageNameMasks'] == null ? null : (map['excludedPackageNameMasks'] as List).cast<String>(),
      includedPackageClassifications: map['includedPackageClassifications'] == null ? null : map['includedPackageClassifications'] as String,
      includedPackageNameMasks: map['includedPackageNameMasks'] == null ? null : (map['includedPackageNameMasks'] as List).cast<String>(),
      rebootSetting: map['rebootSetting'] == null ? null : map['rebootSetting'] as String,
    );
  }
}

