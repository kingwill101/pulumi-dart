// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_encryption_info.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_routing_info.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_transport_info.dart';

/// {@template pulumi_beyondcorp_v1alpha_proxy_config_args_doc}
/// The set of arguments for ProxyConfig.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_proxy_config_args_doc}
class ProxyConfigArgs {
  /// Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;

  /// Optional. Information to encrypt JWT for the proxy server.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo>?
      encryptionInfo;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// The URI of the proxy server.
  final pulumi.Input<String> proxyUri;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Routing info to direct traffic to the proxy server.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo>
      routingInfo;

  /// Transport layer information to verify for the proxy server.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo>
      transportInfo;

  /// Creates a new [ProxyConfigArgs].
  /// [displayName] Optional. An arbitrary caller-provided name for the ProxyConfig. Cannot exceed 64 characters.
  /// [encryptionInfo] Optional. Information to encrypt JWT for the proxy server.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  /// [proxyUri] The URI of the proxy server.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [routingInfo] Routing info to direct traffic to the proxy server.
  /// [transportInfo] Transport layer information to verify for the proxy server.
  ProxyConfigArgs({
    String? displayName,
    GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo? encryptionInfo,
    required String organizationId,
    required String partnerTenantId,
    required String proxyUri,
    String? requestId,
    required GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo routingInfo,
    required GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo
        transportInfo,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        encryptionInfo = pulumi.Input.asOptionalInput<
                GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo>(
            encryptionInfo),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId),
        proxyUri = pulumi.Input.asInput<String>(proxyUri),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        routingInfo = pulumi.Input.asInput<
                GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo>(
            routingInfo),
        transportInfo = pulumi.Input.asInput<
                GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo>(
            transportInfo);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionInfoValue = encryptionInfo;
    if (encryptionInfoValue != null) {
      map['encryptionInfo'] = pulumi.Input.mapOptionalInputValue<
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
    map['routingInfo'] = pulumi.Input.mapInputValue<
        GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo,
        Map<String, dynamic>>(routingInfo, (value) => value.toMap());
    map['transportInfo'] = pulumi.Input.mapInputValue<
        GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo,
        Map<String, dynamic>>(transportInfo, (value) => value.toMap());
    return map;
  }

  factory ProxyConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProxyConfigArgs(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      encryptionInfo: map['encryptionInfo'] == null
          ? null
          : GoogleCloudBeyondcorpPartnerservicesV1alphaEncryptionInfo.fromMap(
              (map['encryptionInfo'] as Map).cast<String, dynamic>()),
      organizationId: map['organizationId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
      proxyUri: map['proxyUri'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      routingInfo:
          GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo.fromMap(
              (map['routingInfo'] as Map).cast<String, dynamic>()),
      transportInfo:
          GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfo.fromMap(
              (map['transportInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
