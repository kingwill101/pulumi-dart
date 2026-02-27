// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for WorkforcePoolProviderScimTenant.
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

  WorkforcePoolProviderScimTenantArgs({
    this.claimMapping,
    this.description,
    this.displayName,
    this.hardDelete,
    required this.location,
    required this.providerId,
    required this.scimTenantId,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final claimMappingValue = claimMapping;
    if (claimMappingValue != null) {
      map['claimMapping'] = claimMappingValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final hardDeleteValue = hardDelete;
    if (hardDeleteValue != null) {
      map['hardDelete'] = hardDeleteValue;
    }
    map['location'] = location;
    map['providerId'] = providerId;
    map['scimTenantId'] = scimTenantId;
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory WorkforcePoolProviderScimTenantArgs.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolProviderScimTenantArgs(
      claimMapping: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['claimMapping']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      hardDelete: pulumi.Input.asOptionalInput<bool>(map['hardDelete']),
      location: pulumi.Input.asInput<String>(map['location']),
      providerId: pulumi.Input.asInput<String>(map['providerId']),
      scimTenantId: pulumi.Input.asInput<String>(map['scimTenantId']),
      workforcePoolId: pulumi.Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
