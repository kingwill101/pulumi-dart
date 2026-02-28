// ignore_for_file: unused_element, unnecessary_cast

class FunctionTenancyConfig {
  /// Tenant Isolation Mode. Valid values: `PER_TENANT`.
  final String tenantIsolationMode;

  /// Creates a new [FunctionTenancyConfig].
  /// [tenantIsolationMode] Tenant Isolation Mode. Valid values: `PER_TENANT`.
  FunctionTenancyConfig({
    required this.tenantIsolationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tenantIsolationMode'] = tenantIsolationMode;
    return map;
  }

  factory FunctionTenancyConfig.fromMap(Map<String, dynamic> map) {
    return FunctionTenancyConfig(
      tenantIsolationMode: map['tenantIsolationMode'] as String,
    );
  }
}
