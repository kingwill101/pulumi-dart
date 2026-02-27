// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_encryption_info.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_routing_info.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_transport_info.dart';

/// The set of arguments for ProxyConfig.
class ProxyConfigArgs {
  /// Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  final Input<String>? displayName;

  /// Optional. Information to encrypt JWT for the proxy server.
  final Input<GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo>?
      encryptionInfo;
  final Input<String> organizationId;
  final Input<String> partnerTenantId;

  /// The URI of the proxy server.
  final Input<String> proxyUri;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Routing info to direct traffic to the proxy server.
  final Input<GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo>
      routingInfo;

  /// Transport layer information to verify for the proxy server.
  final Input<GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo>
      transportInfo;

  ProxyConfigArgs({
    this.displayName,
    this.encryptionInfo,
    required this.organizationId,
    required this.partnerTenantId,
    required this.proxyUri,
    this.requestId,
    required this.routingInfo,
    required this.transportInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionInfoValue = encryptionInfo;
    if (encryptionInfoValue != null) {
      map['encryptionInfo'] = Input.mapOptionalInputValue<
          GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo,
          Map<String, dynamic>>(encryptionInfoValue, (value) => value.toMap());
    }
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    map['proxyUri'] = proxyUri;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['routingInfo'] = Input.mapInputValue<
        GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo,
        Map<String, dynamic>>(routingInfo, (value) => value.toMap());
    map['transportInfo'] = Input.mapInputValue<
        GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo,
        Map<String, dynamic>>(transportInfo, (value) => value.toMap());
    return map;
  }

  factory ProxyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProxyConfigArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      encryptionInfo: Input.asOptionalInput<
              GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo>(
          map['encryptionInfo']),
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerTenantId: Input.asInput<String>(map['partnerTenantId']),
      proxyUri: Input.asInput<String>(map['proxyUri']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      routingInfo:
          Input.asInput<GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo>(
              map['routingInfo']),
      transportInfo: Input.asInput<
              GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo>(
          map['transportInfo']),
    );
  }
}
