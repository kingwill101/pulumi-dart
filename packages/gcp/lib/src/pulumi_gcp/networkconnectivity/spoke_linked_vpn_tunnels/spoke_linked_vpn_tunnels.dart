// ignore_for_file: unused_element, unnecessary_cast

class SpokeLinkedVpnTunnels {
  /// IP ranges allowed to be included during import from hub (does not control transit connectivity).
  /// The only allowed value for now is "ALL_IPV4_RANGES".
  final List<String>? includeImportRanges;

  /// A value that controls whether site-to-site data transfer is enabled for these resources. Note that data transfer is available only in supported locations.
  final bool siteToSiteDataTransfer;

  /// The URIs of linked VPN tunnel resources.
  final List<String> uris;

  SpokeLinkedVpnTunnels({
    this.includeImportRanges,
    required this.siteToSiteDataTransfer,
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeImportRangesValue = includeImportRanges;
    if (includeImportRangesValue != null) {
      map['includeImportRanges'] = includeImportRangesValue;
    }
    map['siteToSiteDataTransfer'] = siteToSiteDataTransfer;
    map['uris'] = uris;
    return map;
  }

  factory SpokeLinkedVpnTunnels.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedVpnTunnels(
      includeImportRanges: map['includeImportRanges'] == null
          ? null
          : (map['includeImportRanges'] as List).cast<String>(),
      siteToSiteDataTransfer: map['siteToSiteDataTransfer'] as bool,
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}
