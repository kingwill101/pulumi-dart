// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mesh membership properties of a managed cluster.
class MeshMembershipPropertiesResponse {
  /// The ARM resource id for the managed mesh member. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppLink/applinks/{appLinkName}/appLinkMembers/{appLinkMemberName}'. Visit https://aka.ms/applink for more information.
  final pulumi.Input<String> managedMeshID;
  /// The current provisioning state of the Mesh Membership.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [MeshMembershipPropertiesResponse].
  /// [managedMeshID] The ARM resource id for the managed mesh member. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppLink/applinks/{appLinkName}/appLinkMembers/{appLinkMemberName}'. Visit https://aka.ms/applink for more information.
  /// [provisioningState] The current provisioning state of the Mesh Membership.
  MeshMembershipPropertiesResponse({
    required this.managedMeshID,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedMeshID': managedMeshID,
      'provisioningState': provisioningState,
    };
  }

  factory MeshMembershipPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MeshMembershipPropertiesResponse(
      managedMeshID: pulumi.Input.fromValue(map['managedMeshID'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

