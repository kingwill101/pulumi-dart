// ignore_for_file: unused_element, unnecessary_cast

class SpokeLinkedProducerVpcNetwork {
  /// IP ranges encompassing the subnets to be excluded from peering.
  final List<String>? excludeExportRanges;

  /// IP ranges allowed to be included from peering.
  final List<String>? includeExportRanges;

  /// The URI of the Service Consumer VPC that the Producer VPC is peered with.
  final String network;

  /// The name of the VPC peering between the Service Consumer VPC and the Producer VPC (defined in the Tenant project) which is added to the NCC hub. This peering must be in ACTIVE state.
  final String peering;

  /// (Output)
  /// The URI of the Producer VPC.
  final String? producerNetwork;

  SpokeLinkedProducerVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    required this.network,
    required this.peering,
    this.producerNetwork,
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
    map['network'] = network;
    map['peering'] = peering;
    final producerNetworkValue = producerNetwork;
    if (producerNetworkValue != null) {
      map['producerNetwork'] = producerNetworkValue;
    }
    return map;
  }

  factory SpokeLinkedProducerVpcNetwork.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedProducerVpcNetwork(
      excludeExportRanges: map['excludeExportRanges'] == null
          ? null
          : (map['excludeExportRanges'] as List).cast<String>(),
      includeExportRanges: map['includeExportRanges'] == null
          ? null
          : (map['includeExportRanges'] as List).cast<String>(),
      network: map['network'] as String,
      peering: map['peering'] as String,
      producerNetwork: map['producerNetwork'] == null
          ? null
          : map['producerNetwork'] as String,
    );
  }
}
