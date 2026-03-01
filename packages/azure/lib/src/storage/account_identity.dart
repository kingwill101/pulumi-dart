// ignore_for_file: unused_element, unnecessary_cast


class AccountIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  ///
  /// > **Note:** The assigned `principal_id` and `tenant_id` can be retrieved after the identity `type` has been set to `SystemAssigned`  and Storage Account has been created. More details are available below.
  final List<String>? identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this Storage Account.
  final String? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Storage Account.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  final String type;

  /// Creates a new [AccountIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Storage Account.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Storage Account.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  AccountIdentity({
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

  factory AccountIdentity.fromMap(Map<String, dynamic> map) {
    return AccountIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

