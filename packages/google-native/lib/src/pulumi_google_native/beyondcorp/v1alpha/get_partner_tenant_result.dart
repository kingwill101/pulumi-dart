// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_partner_metadata_response.dart';

/// Result data returned by getPartnerTenant.
class GetPartnerTenantResult {
  /// Timestamp when the resource was created.
  final String createTime;

  /// Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  final String displayName;

  /// Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse group;

  /// Unique resource name of the PartnerTenant. The name is ignored when creating PartnerTenant.
  final String name;

  /// Optional. Metadata provided by the Partner associated with PartnerTenant.
  final GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse
      partnerMetadata;

  /// Timestamp when the resource was last modified.
  final String updateTime;

  GetPartnerTenantResult({
    required this.createTime,
    required this.displayName,
    required this.group,
    required this.name,
    required this.partnerMetadata,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['group'] = group.toMap();
    map['name'] = name;
    map['partnerMetadata'] = partnerMetadata.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetPartnerTenantResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerTenantResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      group: GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse.fromMap(
          (map['group'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      partnerMetadata:
          GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse
              .fromMap((map['partnerMetadata'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
