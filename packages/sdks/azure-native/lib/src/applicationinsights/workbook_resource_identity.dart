// ignore_for_file: unused_element, unnecessary_cast


/// Identity used for BYOS
class WorkbookResourceIdentity {
  /// Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  final String type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final List<String>? userAssignedIdentities;

  /// Creates a new [WorkbookResourceIdentity].
  /// [type] Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  WorkbookResourceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory WorkbookResourceIdentity.fromMap(Map<String, dynamic> map) {
    return WorkbookResourceIdentity(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

