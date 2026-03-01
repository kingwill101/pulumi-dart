// ignore_for_file: unused_element, unnecessary_cast


class GroupPolicyAssignmentIdentity {
  /// A list of User Managed Identity IDs which should be assigned to the Policy Definition.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID of the Policy Assignment for this Management Group.
  final String? principalId;
  /// The Tenant ID of the Policy Assignment for this Management Group.
  final String? tenantId;
  /// The Type of Managed Identity which should be added to this Policy Definition. Possible values are `SystemAssigned` and `UserAssigned`.
  final String type;

  /// Creates a new [GroupPolicyAssignmentIdentity].
  /// [identityIds] A list of User Managed Identity IDs which should be assigned to the Policy Definition.
  /// [principalId] The Principal ID of the Policy Assignment for this Management Group.
  /// [tenantId] The Tenant ID of the Policy Assignment for this Management Group.
  /// [type] The Type of Managed Identity which should be added to this Policy Definition. Possible values are `SystemAssigned` and `UserAssigned`.
  GroupPolicyAssignmentIdentity({
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

  factory GroupPolicyAssignmentIdentity.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

