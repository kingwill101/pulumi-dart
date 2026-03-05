// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionTenancyConfig {
  /// Tenant Isolation Mode. Valid values: `PER_TENANT`.
  final pulumi.Input<String> tenantIsolationMode;

  /// Creates a new [FunctionTenancyConfig].
  /// [tenantIsolationMode] Tenant Isolation Mode. Valid values: `PER_TENANT`.
  FunctionTenancyConfig({
    required this.tenantIsolationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantIsolationMode': tenantIsolationMode,
    };
  }

  factory FunctionTenancyConfig.fromMap(Map<String, dynamic> map) {
    return FunctionTenancyConfig(
      tenantIsolationMode: pulumi.Input.fromValue(map['tenantIsolationMode'] as String),
    );
  }
}

