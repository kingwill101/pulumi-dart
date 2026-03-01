// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_workforce_pool_provider_scim_tenant_workforce_pool_provider_scim_tenant_args_doc}
/// The set of arguments for WorkforcePoolProviderScimTenant.
/// {@endtemplate}
/// {@macro pulumi_iam_workforce_pool_provider_scim_tenant_workforce_pool_provider_scim_tenant_args_doc}
class WorkforcePoolProviderScimTenantArgs {
  /// Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  final pulumi.Input<Map<String, String>>? claimMapping;

  /// A user-specified description of the provider. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;

  /// A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;

  /// Deletes the SCIM tenant immediately. This operation cannot be undone.
  final pulumi.Input<bool>? hardDelete;

  /// The location for the resource.
  final pulumi.Input<String> location;

  /// The ID of the provider.
  final pulumi.Input<String> providerId;

  /// The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> scimTenantId;

  /// The ID of the workforce pool.
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [WorkforcePoolProviderScimTenantArgs].
  /// [claimMapping] Maps BYOID claims to SCIM claims. This is a required field for new SCIM Tenants being created.
  /// [description] A user-specified description of the provider. Cannot exceed 256 characters.
  /// [displayName] A user-specified display name for the scim tenant. Cannot exceed 32 characters.
  /// [hardDelete] Deletes the SCIM tenant immediately. This operation cannot be undone.
  /// [location] The location for the resource.
  /// [providerId] The ID of the provider.
  /// [scimTenantId] The ID to use for the SCIM tenant, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  /// [workforcePoolId] The ID of the workforce pool.
  WorkforcePoolProviderScimTenantArgs({
    Map<String, String>? claimMapping,
    String? description,
    String? displayName,
    bool? hardDelete,
    required String location,
    required String providerId,
    required String scimTenantId,
    required String workforcePoolId,
  }) : claimMapping = pulumi.Input.asOptionalInput<Map<String, String>>(
         claimMapping,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       hardDelete = pulumi.Input.asOptionalInput<bool>(hardDelete),
       location = pulumi.Input.asInput<String>(location),
       providerId = pulumi.Input.asInput<String>(providerId),
       scimTenantId = pulumi.Input.asInput<String>(scimTenantId),
       workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMapping': ?claimMapping,
      'description': ?description,
      'displayName': ?displayName,
      'hardDelete': ?hardDelete,
      'location': location,
      'providerId': providerId,
      'scimTenantId': scimTenantId,
      'workforcePoolId': workforcePoolId,
    };
  }

  factory WorkforcePoolProviderScimTenantArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkforcePoolProviderScimTenantArgs(
      claimMapping: map['claimMapping'] == null
          ? null
          : (map['claimMapping'] as Map).cast<String, String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      hardDelete: map['hardDelete'] == null ? null : map['hardDelete'] as bool,
      location: map['location'] as String,
      providerId: map['providerId'] as String,
      scimTenantId: map['scimTenantId'] as String,
      workforcePoolId: map['workforcePoolId'] as String,
    );
  }
}
