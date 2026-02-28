// ignore_for_file: unused_element, unnecessary_cast

/// Specifies operating system settings for cluster provisioning.
class BareMetalOsEnvironmentConfig {
  /// Whether the package repo should not be included when initializing bare metal machines.
  final bool? packageRepoExcluded;

  /// Creates a new [BareMetalOsEnvironmentConfig].
  /// [packageRepoExcluded] Whether the package repo should not be included when initializing bare metal machines.
  BareMetalOsEnvironmentConfig({
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

  factory BareMetalOsEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalOsEnvironmentConfig(
      packageRepoExcluded: map['packageRepoExcluded'] == null
          ? null
          : map['packageRepoExcluded'] as bool,
    );
  }
}
