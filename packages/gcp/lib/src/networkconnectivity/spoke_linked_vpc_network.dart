// ignore_for_file: unused_element, unnecessary_cast

class SpokeLinkedVpcNetwork {
  /// IP ranges encompassing the subnets to be excluded from peering.
  final List<String>? excludeExportRanges;

  /// IP ranges allowed to be included from peering.
  final List<String>? includeExportRanges;

  /// The URI of the VPC network resource.
  final String uri;

  /// Creates a new [SpokeLinkedVpcNetwork].
  /// [excludeExportRanges] IP ranges encompassing the subnets to be excluded from peering.
  /// [includeExportRanges] IP ranges allowed to be included from peering.
  /// [uri] The URI of the VPC network resource.
  SpokeLinkedVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': ?excludeExportRanges,
      'includeExportRanges': ?includeExportRanges,
      'uri': uri,
    };
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
