// ignore_for_file: unused_element, unnecessary_cast


class GetStandardIdentity {
  final List<String> identityIds;
  /// The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final String principalId;
  /// The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  final String tenantId;
  /// The Type of Managed Identity assigned to this Logic App Workflow.
  final String type;

  /// Creates a new [GetStandardIdentity].
  /// [identityIds] Required.
  /// [principalId] The Principal ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Managed Service Identity of this Logic App Workflow.
  /// [type] The Type of Managed Identity assigned to this Logic App Workflow.
  GetStandardIdentity({
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

  factory GetStandardIdentity.fromMap(Map<String, dynamic> map) {
    return GetStandardIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

