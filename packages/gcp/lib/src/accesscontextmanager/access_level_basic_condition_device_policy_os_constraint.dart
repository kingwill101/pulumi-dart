// ignore_for_file: unused_element, unnecessary_cast

class AccessLevelBasicConditionDevicePolicyOsConstraint {
  /// The minimum allowed OS version. If not set, any version
  /// of this OS satisfies the constraint.
  /// Format: "major.minor.patch" such as "10.5.301", "9.2.1".
  final String? minimumVersion;

  /// The operating system type of the device.
  /// Possible values are: `OS_UNSPECIFIED`, `DESKTOP_MAC`, `DESKTOP_WINDOWS`, `DESKTOP_LINUX`, `DESKTOP_CHROME_OS`, `ANDROID`, `IOS`.
  final String osType;

  /// If you specify DESKTOP_CHROME_OS for osType, you can optionally include requireVerifiedChromeOs to require Chrome Verified Access.
  final bool? requireVerifiedChromeOs;

  /// Creates a new [AccessLevelBasicConditionDevicePolicyOsConstraint].
  /// [minimumVersion] The minimum allowed OS version. If not set, any version
  /// [osType] The operating system type of the device.
  /// [requireVerifiedChromeOs] If you specify DESKTOP_CHROME_OS for osType, you can optionally include requireVerifiedChromeOs to require Chrome Verified Access.
  AccessLevelBasicConditionDevicePolicyOsConstraint({
    this.minimumVersion,
    required this.osType,
    this.requireVerifiedChromeOs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumVersion': ?minimumVersion,
      'osType': osType,
      'requireVerifiedChromeOs': ?requireVerifiedChromeOs,
    };
  }

  factory AccessLevelBasicConditionDevicePolicyOsConstraint.fromMap(
    Map<String, dynamic> map,
  ) {
    return AccessLevelBasicConditionDevicePolicyOsConstraint(
      minimumVersion: map['minimumVersion'] == null
          ? null
          : map['minimumVersion'] as String,
      osType: map['osType'] as String,
      requireVerifiedChromeOs: map['requireVerifiedChromeOs'] == null
          ? null
          : map['requireVerifiedChromeOs'] as bool,
    );
  }
}
