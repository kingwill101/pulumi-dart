// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a tenant ID that is trusted by the cluster.
class TrustedExternalTenantResponse {
  /// GUID representing an external tenant.
  final pulumi.Input<String>? value;

  /// Creates a new [TrustedExternalTenantResponse].
  /// [value] GUID representing an external tenant.
  TrustedExternalTenantResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TrustedExternalTenantResponse.fromMap(Map<String, dynamic> map) {
    return TrustedExternalTenantResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

