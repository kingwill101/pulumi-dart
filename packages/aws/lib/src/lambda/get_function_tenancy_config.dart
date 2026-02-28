// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionTenancyConfig {
  /// (Required) Tenant Isolation Mode. Valid values: `PER_TENANT`.
  final String tenantIsolationMode;

  /// Creates a new [GetFunctionTenancyConfig].
  /// [tenantIsolationMode] (Required) Tenant Isolation Mode. Valid values: `PER_TENANT`.
  GetFunctionTenancyConfig({
    required this.tenantIsolationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantIsolationMode': tenantIsolationMode,
    };
  }

  factory GetFunctionTenancyConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionTenancyConfig(
      tenantIsolationMode: map['tenantIsolationMode'] as String,
    );
  }
}

