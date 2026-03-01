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
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetUserAssignedIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAssignedIdentityArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

