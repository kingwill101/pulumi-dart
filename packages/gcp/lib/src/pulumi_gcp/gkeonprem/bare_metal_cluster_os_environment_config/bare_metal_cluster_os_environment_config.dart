// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterOsEnvironmentConfig {
  /// Whether the package repo should not be included when initializing
  /// bare metal machines.
  final bool packageRepoExcluded;

  BareMetalClusterOsEnvironmentConfig({
    required this.packageRepoExcluded,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['packageRepoExcluded'] = packageRepoExcluded;
    return map;
  }

  factory BareMetalClusterOsEnvironmentConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterOsEnvironmentConfig(
      packageRepoExcluded: map['packageRepoExcluded'] as bool,
    );
  }
}
