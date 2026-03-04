// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentity_get_user_assigned_identity_args_doc}
/// Arguments for getUserAssignedIdentity.
/// {@endtemplate}
/// {@macro pulumi_managedidentity_get_user_assigned_identity_args_doc}
class GetUserAssignedIdentityArgs {
  /// The name of the Resource Group to which the identity belongs.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the identity resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetUserAssignedIdentityArgs].
  /// [resourceGroupName] The name of the Resource Group to which the identity belongs.
  /// [resourceName] The name of the identity resource.
  GetUserAssignedIdentityArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetUserAssignedIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAssignedIdentityArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
