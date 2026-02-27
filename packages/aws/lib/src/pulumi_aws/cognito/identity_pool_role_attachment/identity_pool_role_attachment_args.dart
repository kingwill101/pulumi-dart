// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../identity_pool_role_attachment_role_mapping/identity_pool_role_attachment_role_mapping.dart';

/// The set of arguments for IdentityPoolRoleAttachment.
class IdentityPoolRoleAttachmentArgs {
  /// An identity pool ID in the format `REGION_GUID`.
  final pulumi.Input<String> identityPoolId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A List of Role Mapping.
  final pulumi.Input<List<IdentityPoolRoleAttachmentRoleMapping>>? roleMappings;

  /// The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.
  final pulumi.Input<Map<String, String>> roles;

  IdentityPoolRoleAttachmentArgs({
    required this.identityPoolId,
    this.region,
    this.roleMappings,
    required this.roles,
  });

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
      identityPoolId: pulumi.Input.asInput<String>(map['identityPoolId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleMappings: pulumi.Input.asOptionalInput<
          List<IdentityPoolRoleAttachmentRoleMapping>>(map['roleMappings']),
      roles: pulumi.Input.asInput<Map<String, String>>(map['roles']),
    );
  }
}
