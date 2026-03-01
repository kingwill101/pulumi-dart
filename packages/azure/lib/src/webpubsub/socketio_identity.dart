// ignore_for_file: unused_element, unnecessary_cast


class SocketioIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs for this Web PubSub Service.
  ///
  /// > **Note:** `identity_ids` is required when `type` is `UserAssigned`.
  final List<String>? identityIds;
  final String? principalId;
  final String? tenantId;
  /// The type of Managed Identity for this Web PubSub Service. Possible Values are `SystemAssigned` and `UserAssigned`.
  final String type;

  /// Creates a new [SocketioIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs for this Web PubSub Service.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of Managed Identity for this Web PubSub Service. Possible Values are `SystemAssigned` and `UserAssigned`.
  SocketioIdentity({
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

  factory SocketioIdentity.fromMap(Map<String, dynamic> map) {
    return SocketioIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

