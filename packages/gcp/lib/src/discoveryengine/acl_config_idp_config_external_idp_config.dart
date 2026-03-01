// ignore_for_file: unused_element, unnecessary_cast

class AclConfigIdpConfigExternalIdpConfig {
  /// Workforce pool name: "locations/global/workforcePools/pool_id"
  final String? workforcePoolName;

  /// Creates a new [AclConfigIdpConfigExternalIdpConfig].
  /// [workforcePoolName] Workforce pool name: "locations/global/workforcePools/pool_id"
  AclConfigIdpConfigExternalIdpConfig({this.workforcePoolName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'workforcePoolName': ?workforcePoolName};
  }

  factory AclConfigIdpConfigExternalIdpConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AclConfigIdpConfigExternalIdpConfig(
      workforcePoolName: map['workforcePoolName'] == null
          ? null
          : map['workforcePoolName'] as String,
    );
  }
}
