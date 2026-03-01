// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentity_user_assigned_identity_args_doc}
/// The set of arguments for UserAssignedIdentity.
/// {@endtemplate}
/// {@macro pulumi_managedidentity_user_assigned_identity_args_doc}
class UserAssignedIdentityArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the Resource Group to which the identity belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the identity resource.
  final pulumi.Input<String>? resourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserAssignedIdentityArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the Resource Group to which the identity belongs.
  /// [resourceName] The name of the identity resource.
  /// [tags] Resource tags.
  UserAssignedIdentityArgs({
    String? location,
    required String resourceGroupName,
    String? resourceName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory UserAssignedIdentityArgs.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityArgs(
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

