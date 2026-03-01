// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationStoreIdentity {
  final List<String> identityIds;
  final String principalId;
  final String tenantId;
  final String type;

  /// Creates a new [GetConfigurationStoreIdentity].
  /// [identityIds] Required.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] Required.
  GetConfigurationStoreIdentity({
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

  factory GetConfigurationStoreIdentity.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

