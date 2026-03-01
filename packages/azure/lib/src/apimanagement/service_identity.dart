// ignore_for_file: unused_element, unnecessary_cast


class ServiceIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this API Management Service.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The identifier for the tenant access information contract.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this API Management Service. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  final String type;

  /// Creates a new [ServiceIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this API Management Service.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The identifier for the tenant access information contract.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this API Management Service. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned` (to enable both).
  ServiceIdentity({
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

  factory ServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ServiceIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

