// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linux specific update configuration.
class LinuxProperties {
  /// packages excluded from the software update configuration.
  final pulumi.Input<List<String>>? excludedPackageNameMasks;

  /// Update classifications included in the software update configuration.
  final pulumi.Input<String>? includedPackageClassifications;

  /// packages included from the software update configuration.
  final pulumi.Input<List<String>>? includedPackageNameMasks;

  /// Reboot setting for the software update configuration.
  final pulumi.Input<String>? rebootSetting;

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
      excludedPackageNameMasks: (() {
        final guardedValue = map['excludedPackageNameMasks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includedPackageClassifications: (() {
        final guardedValue = map['includedPackageClassifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      includedPackageNameMasks: (() {
        final guardedValue = map['includedPackageNameMasks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      rebootSetting: (() {
        final guardedValue = map['rebootSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
