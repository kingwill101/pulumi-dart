// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionTenancyConfig {
  /// (Required) Tenant Isolation Mode. Valid values: `PER_TENANT`.
  final String tenantIsolationMode;

  GetFunctionTenancyConfig({
    required this.tenantIsolationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tenantIsolationMode'] = tenantIsolationMode;
    return map;
  }

  factory GetFunctionTenancyConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionTenancyConfig(
      tenantIsolationMode: map['tenantIsolationMode'] as String,
    );
  }
}
