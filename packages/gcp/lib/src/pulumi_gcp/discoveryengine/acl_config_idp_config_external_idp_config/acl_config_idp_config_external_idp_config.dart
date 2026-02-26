// ignore_for_file: unused_element, unnecessary_cast

class AclConfigIdpConfigExternalIdpConfig {
  /// Workforce pool name: "locations/global/workforcePools/pool_id"
  final String? workforcePoolName;

  AclConfigIdpConfigExternalIdpConfig({
    this.workforcePoolName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final workforcePoolNameValue = workforcePoolName;
    if (workforcePoolNameValue != null) {
      map['workforcePoolName'] = workforcePoolNameValue;
    }
    return map;
  }

  factory AclConfigIdpConfigExternalIdpConfig.fromMap(
      Map<String, dynamic> map) {
    return AclConfigIdpConfigExternalIdpConfig(
      workforcePoolName: map['workforcePoolName'] == null
          ? null
          : map['workforcePoolName'] as String,
    );
  }
}
