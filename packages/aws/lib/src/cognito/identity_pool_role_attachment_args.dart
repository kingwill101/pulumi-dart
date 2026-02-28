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
    required String identityPoolId,
    String? region,
    List<IdentityPoolRoleAttachmentRoleMapping>? roleMappings,
    required Map<String, String> roles,
  })  : identityPoolId = pulumi.Input.asInput<String>(identityPoolId),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleMappings = pulumi.Input.asOptionalInput<
            List<IdentityPoolRoleAttachmentRoleMapping>>(roleMappings),
        roles = pulumi.Input.asInput<Map<String, String>>(roles);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityPoolId'] = identityPoolId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleMappingsValue = roleMappings;
    if (roleMappingsValue != null) {
      map['roleMappings'] = pulumi.Input.mapOptionalInputValue<
              List<IdentityPoolRoleAttachmentRoleMapping>,
              List<Map<String, dynamic>>>(
          roleMappingsValue,
          (value) => pulumi.Input.encodeList<
              IdentityPoolRoleAttachmentRoleMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['roles'] = roles;
    return map;
  }

  factory IdentityPoolRoleAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return IdentityPoolRoleAttachmentArgs(
      identityPoolId: map['identityPoolId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleMappings: map['roleMappings'] == null
          ? null
          : pulumi.Input.decodeList<IdentityPoolRoleAttachmentRoleMapping>(
              map['roleMappings'],
              (value) => IdentityPoolRoleAttachmentRoleMapping.fromMap(
                  (value as Map).cast<String, dynamic>())),
      roles: (map['roles'] as Map).cast<String, String>(),
    );
  }
}
