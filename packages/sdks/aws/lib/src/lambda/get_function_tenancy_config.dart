// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionTenancyConfig {
  /// (Required) Tenant Isolation Mode. Valid values: `PER_TENANT`.
  final pulumi.Input<String> tenantIsolationMode;

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
      tenantIsolationMode: pulumi.Input.fromValue(map['tenantIsolationMode'] as String),
    );
  }
}

