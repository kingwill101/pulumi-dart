// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_permission_profile_response.dart';
import 'organization_response.dart';

/// Azure DevOps organization profile
class AzureDevOpsOrganizationProfileResponse {
  /// Discriminator property for OrganizationProfile.
  /// Expected value is 'AzureDevOps'.
  final pulumi.Input<String> kind;

  /// The list of Azure DevOps organizations the pool should be present in.
  final pulumi.Input<List<OrganizationResponse>> organizations;

  /// The type of permission which determines which accounts are admins on the Azure DevOps pool.
  final pulumi.Input<AzureDevOpsPermissionProfileResponse>? permissionProfile;

  /// Creates a new [AzureDevOpsOrganizationProfileResponse].
  /// [kind] Discriminator property for OrganizationProfile.
  /// [organizations] The list of Azure DevOps organizations the pool should be present in.
  /// [permissionProfile] The type of permission which determines which accounts are admins on the Azure DevOps pool.
  AzureDevOpsOrganizationProfileResponse({
    required this.kind,
    required this.organizations,
    this.permissionProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'organizations':
          pulumi.Input.mapInputValue<
            List<OrganizationResponse>,
            List<Map<String, dynamic>>
          >(
            organizations,
            (value) =>
                pulumi.Input.encodeList<
                  OrganizationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'permissionProfile':
          ?pulumi.Input.mapOptionalInputValue<
            AzureDevOpsPermissionProfileResponse,
            Map<String, dynamic>
          >(permissionProfile, (value) => value.toMap()),
    };
  }

  factory AzureDevOpsOrganizationProfileResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureDevOpsOrganizationProfileResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      organizations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OrganizationResponse>(
          map['organizations']!,
          (value) => OrganizationResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      permissionProfile: (() {
        final guardedValue = map['permissionProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureDevOpsPermissionProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
