import 'package:pulumi/pulumi.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_encryption_info_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_routing_info_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_transport_info_response.dart';
import 'proxy_config_args.dart';

/// Creates a new BeyondCorp Enterprise ProxyConfig in a given organization and PartnerTenant. Can only be called by on onboarded Beyondcorp Enterprise partner.
/// Auto-naming is currently not supported for this resource.
class ProxyConfig extends CustomResource {
  /// Timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  late final Output<String> displayName;

  /// Optional. Information to encrypt JWT for the proxy server.
  late final Output<
          GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse>
      encryptionInfo;

  /// ProxyConfig resource name.
  late final Output<String> name;
  late final Output<String> organizationId;
  late final Output<String> partnerTenantId;

  /// The URI of the proxy server.
  late final Output<String> proxyUri;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Routing info to direct traffic to the proxy server.
  late final Output<
          GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse>
      routingInfo;

  /// Transport layer information to verify for the proxy server.
  late final Output<
          GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse>
      transportInfo;

  /// Timestamp when the resource was last modified.
  late final Output<String> updateTime;

  ProxyConfig(
    String name, {
    ProxyConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:ProxyConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.encryptionInfo = Output.createUnknown<
        GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfoResponse>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.partnerTenantId = Output.createUnknown<String>();
    this.proxyUri = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.routingInfo = Output.createUnknown<
        GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse>();
    this.transportInfo = Output.createUnknown<
        GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse>();
    this.updateTime = Output.createUnknown<String>();
  }
}
