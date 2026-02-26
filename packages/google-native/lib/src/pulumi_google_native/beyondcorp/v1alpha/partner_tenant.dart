import 'package:pulumi/pulumi.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_partner_metadata_response.dart';
import 'partner_tenant_args.dart';

/// Creates a new BeyondCorp Enterprise partnerTenant in a given organization and can only be called by onboarded BeyondCorp Enterprise partner.
/// Auto-naming is currently not supported for this resource.
class PartnerTenant extends CustomResource {
  /// Timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. An arbitrary caller-provided name for the PartnerTenant. Cannot exceed 64 characters.
  late final Output<String> displayName;

  /// Optional. Group information for the users enabled to use the partnerTenant. If the group information is not provided then the partnerTenant will be enabled for all users.
  late final Output<GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse>
      group;

  /// Unique resource name of the PartnerTenant. The name is ignored when creating PartnerTenant.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Optional. Metadata provided by the Partner associated with PartnerTenant.
  late final Output<
          GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse>
      partnerMetadata;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Timestamp when the resource was last modified.
  late final Output<String> updateTime;

  PartnerTenant(
    String name, {
    PartnerTenantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:PartnerTenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.group = Output.createUnknown<
        GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.partnerMetadata = Output.createUnknown<
        GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerMetadataResponse>();
    this.requestId = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
