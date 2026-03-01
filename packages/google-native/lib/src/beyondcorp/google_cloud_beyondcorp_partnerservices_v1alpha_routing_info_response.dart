// ignore_for_file: unused_element, unnecessary_cast

/// Message contains the routing information to direct traffic to the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse {
  /// Proxy Auto-Configuration (PAC) URI.
  final String pacUri;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse].
  /// [pacUri] Proxy Auto-Configuration (PAC) URI.
  GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse({
    required this.pacUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pacUri': pacUri};
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfoResponse(
      pacUri: map['pacUri'] as String,
    );
  }
}
