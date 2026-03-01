// ignore_for_file: unused_element, unnecessary_cast

/// A collection of Cloud VPN tunnel resources. These resources should be redundant HA VPN tunnels that all advertise the same prefixes to Google Cloud. Alternatively, in a passive/active configuration, all tunnels should be capable of advertising the same prefixes.
class LinkedVpnTunnels {
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  final bool? siteToSiteDataTransfer;

  /// The URIs of linked VPN tunnel resources.
  final List<String>? uris;

  /// Creates a new [LinkedVpnTunnels].
  /// [siteToSiteDataTransfer] A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  /// [uris] The URIs of linked VPN tunnel resources.
  LinkedVpnTunnels({this.siteToSiteDataTransfer, this.uris});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteToSiteDataTransfer': ?siteToSiteDataTransfer,
      'uris': ?uris,
    };
  }

  factory LinkedVpnTunnels.fromMap(Map<String, dynamic> map) {
    return LinkedVpnTunnels(
      siteToSiteDataTransfer: map['siteToSiteDataTransfer'] == null
          ? null
          : map['siteToSiteDataTransfer'] as bool,
      uris: map['uris'] == null ? null : (map['uris'] as List).cast<String>(),
    );
  }
}
