// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_permission_profile.dart';
import 'organization.dart';

/// Azure DevOps organization profile
class AzureDevOpsOrganizationProfile {
  /// Discriminator property for OrganizationProfile.
  /// Expected value is 'AzureDevOps'.
  final pulumi.Input<String> kind;
  /// The list of Azure DevOps organizations the pool should be present in.
  final pulumi.Input<List<Organization>> organizations;
  /// The type of permission which determines which accounts are admins on the Azure DevOps pool.
  final pulumi.Input<AzureDevOpsPermissionProfile>? permissionProfile;

  /// Creates a new [AzureDevOpsOrganizationProfile].
  /// [kind] Discriminator property for OrganizationProfile.
  /// [organizations] The list of Azure DevOps organizations the pool should be present in.
  /// [permissionProfile] The type of permission which determines which accounts are admins on the Azure DevOps pool.
  AzureDevOpsOrganizationProfile({
    required this.kind,
    required this.organizations,
    this.permissionProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'organizations': pulumi.Input.mapInputValue<List<Organization>, List<Map<String, dynamic>>>(organizations, (value) => pulumi.Input.encodeList<Organization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissionProfile': ?pulumi.Input.mapOptionalInputValue<AzureDevOpsPermissionProfile, Map<String, dynamic>>(permissionProfile, (value) => value.toMap()),
    };
  }

  factory AzureDevOpsOrganizationProfile.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsOrganizationProfile(
      kind: (map['kind'] as String).input(),
      organizations: (pulumi.Input.decodeList<Organization>(map['organizations'], (value) => Organization.fromMap((value as Map).cast<String, dynamic>()))).input(),
      permissionProfile: map['permissionProfile'] == null ? null : (AzureDevOpsPermissionProfile.fromMap((map['permissionProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

