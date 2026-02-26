// ignore_for_file: unused_element, unnecessary_cast

class AccessLevelConditionDevicePolicyOsConstraint {
  /// The minimum allowed OS version. If not set, any version
  /// of this OS satisfies the constraint.
  /// Format: "major.minor.patch" such as "10.5.301", "9.2.1".
  final String? minimumVersion;

  /// The operating system type of the device.
  /// Possible values are: `OS_UNSPECIFIED`, `DESKTOP_MAC`, `DESKTOP_WINDOWS`, `DESKTOP_LINUX`, `DESKTOP_CHROME_OS`, `ANDROID`, `IOS`.
  final String osType;

  AccessLevelConditionDevicePolicyOsConstraint({
    this.minimumVersion,
    required this.osType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minimumVersionValue = minimumVersion;
    if (minimumVersionValue != null) {
      map['minimumVersion'] = minimumVersionValue;
    }
    map['osType'] = osType;
    return map;
  }

  factory AccessLevelConditionDevicePolicyOsConstraint.fromMap(
      Map<String, dynamic> map) {
    return AccessLevelConditionDevicePolicyOsConstraint(
      minimumVersion: map['minimumVersion'] == null
          ? null
          : map['minimumVersion'] as String,
      osType: map['osType'] as String,
    );
  }
}
