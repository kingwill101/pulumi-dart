// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid System Topic.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  ///
  /// > **Note:** When `type` is set to `SystemAssigned`, The assigned `principal_id` and `tenant_id` can be retrieved after the Event Grid System Topic has been created.
  final List<String>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final String? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Event Grid System Topic. Possible values are `SystemAssigned`, `UserAssigned`, and `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [SystemTopicIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid System Topic.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Event Grid System Topic. Possible values are `SystemAssigned`, `UserAssigned`, and `SystemAssigned, UserAssigned`.
  SystemTopicIdentity({
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

  factory SystemTopicIdentity.fromMap(Map<String, dynamic> map) {
    return SystemTopicIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

