// ignore_for_file: unused_element, unnecessary_cast


class GetServiceTenantAccess {
  /// Is access to the Management API enabled (presumably "for this Tenant")?
  final bool enabled;
  /// Primary access key for the tenant access information contract.
  final String primaryKey;
  /// Secondary access key for the tenant access information contract.
  final String secondaryKey;
  /// The ID of the Tenant which has access to this API Management instance.
  final String tenantId;

  /// Creates a new [GetServiceTenantAccess].
  /// [enabled] Is access to the Management API enabled (presumably "for this Tenant")?
  /// [primaryKey] Primary access key for the tenant access information contract.
  /// [secondaryKey] Secondary access key for the tenant access information contract.
  /// [tenantId] The ID of the Tenant which has access to this API Management instance.
  GetServiceTenantAccess({
    required this.enabled,
    required this.primaryKey,
    required this.secondaryKey,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'primaryKey': primaryKey,
      'secondaryKey': secondaryKey,
      'tenantId': tenantId,
    };
  }

  factory GetServiceTenantAccess.fromMap(Map<String, dynamic> map) {
    return GetServiceTenantAccess(
      enabled: map['enabled'] as bool,
      primaryKey: map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

