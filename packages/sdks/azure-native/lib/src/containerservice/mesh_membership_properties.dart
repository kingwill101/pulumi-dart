// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Mesh membership properties of a managed cluster.
class MeshMembershipProperties {
  /// The ARM resource id for the managed mesh member. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppLink/applinks/{appLinkName}/appLinkMembers/{appLinkMemberName}'. Visit https://aka.ms/applink for more information.
  final pulumi.Input<String> managedMeshID;

  /// Creates a new [MeshMembershipProperties].
  /// [managedMeshID] The ARM resource id for the managed mesh member. This is of the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppLink/applinks/{appLinkName}/appLinkMembers/{appLinkMemberName}'. Visit https://aka.ms/applink for more information.
  MeshMembershipProperties({
    required this.managedMeshID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedMeshID': managedMeshID,
    };
  }

  factory MeshMembershipProperties.fromMap(Map<String, dynamic> map) {
    return MeshMembershipProperties(
      managedMeshID: pulumi.Input.fromValue(map['managedMeshID'] as String),
    );
  }
}

