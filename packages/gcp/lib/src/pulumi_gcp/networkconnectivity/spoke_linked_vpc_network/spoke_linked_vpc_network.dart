// ignore_for_file: unused_element, unnecessary_cast

class SpokeLinkedVpcNetwork {
  /// IP ranges encompassing the subnets to be excluded from peering.
  final List<String>? excludeExportRanges;

  /// IP ranges allowed to be included from peering.
  final List<String>? includeExportRanges;

  /// The URI of the VPC network resource.
  final String uri;

  SpokeLinkedVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeExportRangesValue = excludeExportRanges;
    if (excludeExportRangesValue != null) {
      map['excludeExportRanges'] = excludeExportRangesValue;
    }
    final includeExportRangesValue = includeExportRanges;
    if (includeExportRangesValue != null) {
      map['includeExportRanges'] = includeExportRangesValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory SpokeLinkedVpcNetwork.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedVpcNetwork(
      excludeExportRanges: map['excludeExportRanges'] == null
          ? null
          : (map['excludeExportRanges'] as List).cast<String>(),
      includeExportRanges: map['includeExportRanges'] == null
          ? null
          : (map['includeExportRanges'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}
