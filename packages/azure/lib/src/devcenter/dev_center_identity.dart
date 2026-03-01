// ignore_for_file: unused_element, unnecessary_cast


class DevCenterIdentity {
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  final String type;

  /// Creates a new [DevCenterIdentity].
  /// [identityIds] Optional.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Required.
  DevCenterIdentity({
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

  factory DevCenterIdentity.fromMap(Map<String, dynamic> map) {
    return DevCenterIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

