// ignore_for_file: unused_element, unnecessary_cast


class FhirServiceIdentity {
  /// A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned`.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// The type of managed identity to assign. Possible values are `UserAssigned` and `SystemAssigned`.
  final String type;

  /// Creates a new [FhirServiceIdentity].
  /// [identityIds] A list of one or more Resource IDs for User Assigned Managed identities to assign. Required when `type` is set to `UserAssigned`.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of managed identity to assign. Possible values are `UserAssigned` and `SystemAssigned`.
  FhirServiceIdentity({
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

  factory FhirServiceIdentity.fromMap(Map<String, dynamic> map) {
    return FhirServiceIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

