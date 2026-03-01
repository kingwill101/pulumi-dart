// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppIdentity {
  /// A `identity_ids` block as defined below.
  final List<String> identityIds;
  /// The Principal ID Managed Service Identity.
  final String principalId;
  /// The Tenant ID of the Managed Service Identity.
  final String tenantId;
  /// The Azure Storage Type.
  final String type;

  /// Creates a new [GetWindowsWebAppIdentity].
  /// [identityIds] A `identity_ids` block as defined below.
  /// [principalId] The Principal ID Managed Service Identity.
  /// [tenantId] The Tenant ID of the Managed Service Identity.
  /// [type] The Azure Storage Type.
  GetWindowsWebAppIdentity({
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

  factory GetWindowsWebAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

