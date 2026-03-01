// ignore_for_file: unused_element, unnecessary_cast


/// Managed service identity properties.
class ManagedServiceIdentity {
  /// Type of managed service identity. The type 'SystemAssigned' includes an implicitly created identity. The type 'None' will remove any identities from the resource.
  final String type;
  /// The list of user assigned identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}
  final List<String>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentity].
  /// [type] Type of managed service identity. The type 'SystemAssigned' includes an implicitly created identity. The type 'None' will remove any identities from the resource.
  /// [userAssignedIdentities] The list of user assigned identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}
  ManagedServiceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentity(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

