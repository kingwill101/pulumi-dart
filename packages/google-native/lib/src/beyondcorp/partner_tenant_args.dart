// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_group.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_partner_metadata.dart';

/// {@template pulumi_beyondcorp_v1alpha_partner_tenant_args_doc}
/// The set of arguments for PartnerTenant.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_partner_tenant_args_doc}
class PartnerTenantArgs {
  /// Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaGroup>? group;
  final pulumi.Input<String> organizationId;
  /// Optional. Metadata provided by the Partner associated with PartnerTenant.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata>? partnerMetadata;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [PartnerTenantArgs].
  /// [displayName] Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  /// [group] Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  /// [organizationId] Required.
  /// [partnerMetadata] Optional. Metadata provided by the Partner associated with PartnerTenant.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  PartnerTenantArgs({
    String? displayName,
    GoogleCloudBeyondcorpPartnerservicesV1alphaGroup? group,
    required String organizationId,
    GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata? partnerMetadata,
    String? requestId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      group = pulumi.Input.asOptionalInput<GoogleCloudBeyondcorpPartnerservicesV1alphaGroup>(group),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      partnerMetadata = pulumi.Input.asOptionalInput<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata>(partnerMetadata),
      requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'group': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpPartnerservicesV1alphaGroup, Map<String, dynamic>>(group, (value) => value.toMap()),
      'organizationId': organizationId,
      'partnerMetadata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata, Map<String, dynamic>>(partnerMetadata, (value) => value.toMap()),
      'requestId': ?requestId,
    };
  }

  factory PartnerTenantArgs.fromMap(Map<String, dynamic> map) {
    return PartnerTenantArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      group: map['group'] == null ? null : GoogleCloudBeyondcorpPartnerservicesV1alphaGroup.fromMap((map['group'] as Map).cast<String, dynamic>()),
      organizationId: map['organizationId'] as String,
      partnerMetadata: map['partnerMetadata'] == null ? null : GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadata.fromMap((map['partnerMetadata'] as Map).cast<String, dynamic>()),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}

