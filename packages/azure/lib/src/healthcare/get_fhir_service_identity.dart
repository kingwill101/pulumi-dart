// ignore_for_file: unused_element, unnecessary_cast


class GetFhirServiceIdentity {
  final List<String> identityIds;
  /// The Principal ID associated with this System Assigned Managed Service Identity.
  final String principalId;
  /// The Tenant ID associated with this System Assigned Managed Service Identity.
  final String tenantId;
  /// The type of identity used for the Healthcare FHIR service.
  final String type;

  /// Creates a new [GetFhirServiceIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID associated with this System Assigned Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this System Assigned Managed Service Identity.
  /// [type] The type of identity used for the Healthcare FHIR service.
  GetFhirServiceIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetFhirServiceIdentity.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

