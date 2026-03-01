// ignore_for_file: unused_element, unnecessary_cast


class ResourceBridgeApplianceIdentity {
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Arc Resource Bridge Appliance. The only possible value is `SystemAssigned`. Changing this forces a new resource to be created.
  final String type;

  /// Creates a new [ResourceBridgeApplianceIdentity].
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Arc Resource Bridge Appliance. The only possible value is `SystemAssigned`. Changing this forces a new resource to be created.
  ResourceBridgeApplianceIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory ResourceBridgeApplianceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceBridgeApplianceIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

