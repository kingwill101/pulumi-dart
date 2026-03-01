// ignore_for_file: unused_element, unnecessary_cast


class NamespaceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Service Bus namespace.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Service Bus Namespace.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Service Bus Namespace.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Service Bus Namespace. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  final String type;

  /// Creates a new [NamespaceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Service Bus namespace.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Service Bus Namespace.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Service Bus Namespace.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Service Bus Namespace. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  NamespaceIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory NamespaceIdentity.fromMap(Map<String, dynamic> map) {
    return NamespaceIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

