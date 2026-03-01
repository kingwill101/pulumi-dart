// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msi_user_assigned_identity_user_assigned_identity_args_doc}
/// The set of arguments for UserAssignedIdentity.
/// {@endtemplate}
/// {@macro pulumi_msi_user_assigned_identity_user_assigned_identity_args_doc}
class UserAssignedIdentityArgs {
  /// The isolation scope for the User Assigned Identity. The only possible value is `Regional`.
  final pulumi.Input<String>? isolationScope;
  /// The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the User Assigned Identity.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserAssignedIdentityArgs].
  /// [isolationScope] The isolation scope for the User Assigned Identity. The only possible value is `Regional`.
  /// [location] The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  /// [name] Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  /// [tags] A mapping of tags which should be assigned to the User Assigned Identity.
  UserAssignedIdentityArgs({
    String? isolationScope,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      isolationScope = pulumi.Input.asOptionalInput<String>(isolationScope),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolationScope': ?isolationScope,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory UserAssignedIdentityArgs.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityArgs(
      isolationScope: map['isolationScope'] == null ? null : map['isolationScope'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

