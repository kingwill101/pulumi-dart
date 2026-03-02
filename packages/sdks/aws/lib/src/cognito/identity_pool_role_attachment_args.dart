// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_pool_role_attachment_role_mapping.dart';

/// {@template pulumi_cognito_identity_pool_role_attachment_identity_pool_role_attachment_args_doc}
/// The set of arguments for IdentityPoolRoleAttachment.
/// {@endtemplate}
/// {@macro pulumi_cognito_identity_pool_role_attachment_identity_pool_role_attachment_args_doc}
class IdentityPoolRoleAttachmentArgs {
  /// An identity pool ID in the format `REGION_GUID`.
  final pulumi.Input<String> identityPoolId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A List of Role Mapping.
  final pulumi.Input<List<IdentityPoolRoleAttachmentRoleMapping>>? roleMappings;
  /// The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.
  final pulumi.Input<Map<String, String>> roles;

  /// Creates a new [IdentityPoolRoleAttachmentArgs].
  /// [identityPoolId] An identity pool ID in the format `REGION_GUID`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleMappings] A List of Role Mapping.
  /// [roles] The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.
  IdentityPoolRoleAttachmentArgs({
    required this.identityPoolId,
    this.region,
    this.roleMappings,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityPoolId': identityPoolId,
      'region': ?region,
      'roleMappings': ?pulumi.Input.mapOptionalInputValue<List<IdentityPoolRoleAttachmentRoleMapping>, List<Map<String, dynamic>>>(roleMappings, (value) => pulumi.Input.encodeList<IdentityPoolRoleAttachmentRoleMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roles': roles,
    };
  }

  factory IdentityPoolRoleAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPoolRoleAttachmentArgs(
      identityPoolId: (map['identityPoolId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleMappings: map['roleMappings'] == null ? null : (pulumi.Input.decodeList<IdentityPoolRoleAttachmentRoleMapping>(map['roleMappings'], (value) => IdentityPoolRoleAttachmentRoleMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roles: ((map['roles'] as Map).cast<String, String>()).input(),
    );
  }
}

