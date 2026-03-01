// ignore_for_file: unused_element, unnecessary_cast


class GetStaticWebAppIdentity {
  /// The list of Managed Identity IDs which are assigned to this Static Web App resource.
  final List<String> identityIds;
  final String principalId;
  final String tenantId;
  /// The Type of Managed Identity assigned to this Static Web App resource.
  final String type;

  /// Creates a new [GetStaticWebAppIdentity].
  /// [identityIds] The list of Managed Identity IDs which are assigned to this Static Web App resource.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] The Type of Managed Identity assigned to this Static Web App resource.
  GetStaticWebAppIdentity({
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

  factory GetStaticWebAppIdentity.fromMap(Map<String, dynamic> map) {
    return GetStaticWebAppIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

