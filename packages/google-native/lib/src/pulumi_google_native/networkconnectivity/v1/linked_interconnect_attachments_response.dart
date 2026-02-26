// ignore_for_file: unused_element, unnecessary_cast

/// A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
class LinkedInterconnectAttachmentsResponse {
  /// A value that controls whether site-to-site data transfer is enabled for these resources. Data transfer is available only in [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  final bool siteToSiteDataTransfer;

  /// The URIs of linked interconnect attachment resources
  final List<String> uris;

  /// The VPC network where these VLAN attachments are located.
  final String vpcNetwork;

  LinkedInterconnectAttachmentsResponse({
    required this.siteToSiteDataTransfer,
    required this.uris,
    required this.vpcNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['siteToSiteDataTransfer'] = siteToSiteDataTransfer;
    map['uris'] = uris;
    map['vpcNetwork'] = vpcNetwork;
    return map;
  }

  factory LinkedInterconnectAttachmentsResponse.fromMap(
      Map<String, dynamic> map) {
    return LinkedInterconnectAttachmentsResponse(
      siteToSiteDataTransfer: map['siteToSiteDataTransfer'] as bool,
      uris: (map['uris'] as List).cast<String>(),
      vpcNetwork: map['vpcNetwork'] as String,
    );
  }
}
