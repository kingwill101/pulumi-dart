// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_user_assigned_identity_get_user_assigned_identity_args_doc}
/// Arguments for getUserAssignedIdentity.
/// {@endtemplate}
/// {@macro pulumi_core_get_user_assigned_identity_get_user_assigned_identity_args_doc}
class GetUserAssignedIdentityArgs {
  /// The name of the User Assigned Identity.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the User Assigned Identity exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetUserAssignedIdentityArgs].
  /// [name] The name of the User Assigned Identity.
  /// [resourceGroupName] The name of the Resource Group in which the User Assigned Identity exists.
  GetUserAssignedIdentityArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetUserAssignedIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAssignedIdentityArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

