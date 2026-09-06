// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed service identity of the resource.
class DataCollectionEndpointResourceIdentity {
  /// Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  final pulumi.Input<dynamic> type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final pulumi.Input<List<String>?>? userAssignedIdentities;

  /// Creates a new [DataCollectionEndpointResourceIdentity].
  /// [type] Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  const DataCollectionEndpointResourceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory DataCollectionEndpointResourceIdentity.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointResourceIdentity(
      type: pulumi.Input.fromValue(map['type']),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
