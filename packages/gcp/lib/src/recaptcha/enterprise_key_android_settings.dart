// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseKeyAndroidSettings {
  /// If set to true, it means allowed_package_names will not be enforced.
  final bool? allowAllPackageNames;

  /// Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  final List<String>? allowedPackageNames;

  /// Creates a new [EnterpriseKeyAndroidSettings].
  /// [allowAllPackageNames] If set to true, it means allowed_package_names will not be enforced.
  /// [allowedPackageNames] Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  EnterpriseKeyAndroidSettings({
    this.allowAllPackageNames,
    this.allowedPackageNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAllPackageNamesValue = allowAllPackageNames;
    if (allowAllPackageNamesValue != null) {
      map['allowAllPackageNames'] = allowAllPackageNamesValue;
    }
    final allowedPackageNamesValue = allowedPackageNames;
    if (allowedPackageNamesValue != null) {
      map['allowedPackageNames'] = allowedPackageNamesValue;
    }
    return map;
  }

  factory EnterpriseKeyAndroidSettings.fromMap(Map<String, dynamic> map) {
    return EnterpriseKeyAndroidSettings(
      allowAllPackageNames: map['allowAllPackageNames'] == null
          ? null
          : map['allowAllPackageNames'] as bool,
      allowedPackageNames: map['allowedPackageNames'] == null
          ? null
          : (map['allowedPackageNames'] as List).cast<String>(),
    );
  }
}
