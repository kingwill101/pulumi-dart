// ignore_for_file: unused_element, unnecessary_cast


class StandardIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Standard.
  ///
  /// > **Note:** When `type` is set to `SystemAssigned`, The assigned `principal_id` and `tenant_id` can be retrieved after the Logic App has been created. More details are available below.
  ///
  /// > **Note:** The `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Logic App Standard. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  final String type;

  /// Creates a new [StandardIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Standard.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this App Service.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Logic App Standard. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned` (to enable both).
  StandardIdentity({
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

  factory StandardIdentity.fromMap(Map<String, dynamic> map) {
    return StandardIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

