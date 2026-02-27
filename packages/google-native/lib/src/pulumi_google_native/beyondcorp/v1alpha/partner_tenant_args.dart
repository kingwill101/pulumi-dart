// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_group.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_partner_metadata.dart';

/// The set of arguments for PartnerTenant.
class PartnerTenantArgs {
  /// Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  final Input<String>? displayName;

  /// Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  final Input<GoogleCloudBeyondcorpPartnerservicesV1alphaGroup>? group;
  final Input<String> organizationId;

  /// Optional. Metadata provided by the Partner associated with PartnerTenant.
  final Input<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata>?
      partnerMetadata;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  PartnerTenantArgs({
    this.displayName,
    this.group,
    required this.organizationId,
    this.partnerMetadata,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = Input.mapOptionalInputValue<
          GoogleCloudBeyondcorpPartnerservicesV1alphaGroup,
          Map<String, dynamic>>(groupValue, (value) => value.toMap());
    }
    map['organizationId'] = organizationId;
    final partnerMetadataValue = partnerMetadata;
    if (partnerMetadataValue != null) {
      map['partnerMetadata'] = Input.mapOptionalInputValue<
          GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata,
          Map<String, dynamic>>(partnerMetadataValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory PartnerTenantArgs.fromMap(Map<String, dynamic> map) {
    return PartnerTenantArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      group: Input.asOptionalInput<
          GoogleCloudBeyondcorpPartnerservicesV1alphaGroup>(map['group']),
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerMetadata: Input.asOptionalInput<
              GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata>(
          map['partnerMetadata']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
