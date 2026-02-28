// ignore_for_file: unused_element, unnecessary_cast

/// Specifies operating system operation settings for cluster provisioning.
class BareMetalAdminOsEnvironmentConfig {
  /// Whether the package repo should be added when initializing bare metal machines.
  final bool? packageRepoExcluded;

  /// Creates a new [BareMetalAdminOsEnvironmentConfig].
  /// [packageRepoExcluded] Whether the package repo should be added when initializing bare metal machines.
  BareMetalAdminOsEnvironmentConfig({
    this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final packageRepoExcludedValue = packageRepoExcluded;
    if (packageRepoExcludedValue != null) {
      map['packageRepoExcluded'] = packageRepoExcludedValue;
    }
    return map;
  }

  factory BareMetalAdminOsEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminOsEnvironmentConfig(
      packageRepoExcluded: map['packageRepoExcluded'] == null
          ? null
          : map['packageRepoExcluded'] as bool,
    );
  }
}
