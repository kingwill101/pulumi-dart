// ignore_for_file: unused_element, unnecessary_cast

/// Message contains the routing information to direct traffic to the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo {
  /// Proxy Auto-Configuration (PAC) URI.
  final String pacUri;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo].
  /// [pacUri] Proxy Auto-Configuration (PAC) URI.
  GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo({
    required this.pacUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pacUri'] = pacUri;
    return map;
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaRoutingInfo(
      pacUri: map['pacUri'] as String,
    );
  }
}
