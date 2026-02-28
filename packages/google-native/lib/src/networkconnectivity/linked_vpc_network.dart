// ignore_for_file: unused_element, unnecessary_cast


/// An existing VPC network.
class LinkedVpcNetwork {
  /// Optional. IP ranges encompassing the subnets to be excluded from peering.
  final List<String>? excludeExportRanges;
  /// The URI of the VPC network resource.
  final String uri;

  /// Creates a new [LinkedVpcNetwork].
  /// [excludeExportRanges] Optional. IP ranges encompassing the subnets to be excluded from peering.
  /// [uri] The URI of the VPC network resource.
  LinkedVpcNetwork({
    this.excludeExportRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': ?excludeExportRanges,
      'uri': uri,
    };
  }

  factory LinkedVpcNetwork.fromMap(Map<String, dynamic> map) {
    return LinkedVpcNetwork(
      excludeExportRanges: map['excludeExportRanges'] == null ? null : (map['excludeExportRanges'] as List).cast<String>(),
      uri: map['uri'] as String,
    );
  }
}

