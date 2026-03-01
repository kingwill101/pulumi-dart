// ignore_for_file: unused_element, unnecessary_cast


class ServiceIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Web PubSub.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned`
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Web PubSub. Possible values are `SystemAssigned`, `UserAssigned`.
  final String type;

  /// Creates a new [ServiceIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Web PubSub.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Web PubSub. Possible values are `SystemAssigned`, `UserAssigned`.
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

