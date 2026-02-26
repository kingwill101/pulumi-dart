// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseKeyAndroidSettings {
  /// If set to true, it means<span pulumi-lang-nodejs=" allowedPackageNames " pulumi-lang-dotnet=" AllowedPackageNames " pulumi-lang-go=" allowedPackageNames " pulumi-lang-python=" allowed_package_names " pulumi-lang-yaml=" allowedPackageNames " pulumi-lang-java=" allowedPackageNames "> allowed_package_names </span>will not be enforced.
  final bool? allowAllPackageNames;

  /// Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  final List<String>? allowedPackageNames;

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
