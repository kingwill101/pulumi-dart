// ignore_for_file: unused_element, unnecessary_cast


class GetGrafanaIdentity {
  final List<String>? identityIds;
  final String principalId;
  final String tenantId;
  final String type;

  /// Creates a new [GetGrafanaIdentity].
  /// [identityIds] Optional.
  /// [principalId] Required.
  /// [tenantId] Required.
  /// [type] Required.
  GetGrafanaIdentity({
    this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetGrafanaIdentity.fromMap(Map<String, dynamic> map) {
    return GetGrafanaIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

