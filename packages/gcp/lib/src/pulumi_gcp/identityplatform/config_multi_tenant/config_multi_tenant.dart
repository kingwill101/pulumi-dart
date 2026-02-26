// ignore_for_file: unused_element, unnecessary_cast

class ConfigMultiTenant {
  /// Whether this project can have tenants or not.
  final bool? allowTenants;

  /// The default cloud parent org or folder that the tenant project should be created under.
  /// The parent resource name should be in the format of "/", such as "folders/123" or "organizations/456".
  /// If the value is not set, the tenant will be created under the same organization or folder as the agent project.
  final String? defaultTenantLocation;

  ConfigMultiTenant({
    this.allowTenants,
    this.defaultTenantLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowTenantsValue = allowTenants;
    if (allowTenantsValue != null) {
      map['allowTenants'] = allowTenantsValue;
    }
    final defaultTenantLocationValue = defaultTenantLocation;
    if (defaultTenantLocationValue != null) {
      map['defaultTenantLocation'] = defaultTenantLocationValue;
    }
    return map;
  }

  factory ConfigMultiTenant.fromMap(Map<String, dynamic> map) {
    return ConfigMultiTenant(
      allowTenants:
          map['allowTenants'] == null ? null : map['allowTenants'] as bool,
      defaultTenantLocation: map['defaultTenantLocation'] == null
          ? null
          : map['defaultTenantLocation'] as String,
    );
  }
}
