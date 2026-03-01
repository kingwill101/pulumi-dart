// ignore_for_file: unused_element, unnecessary_cast

class BlockchainNodesEthereumDetailsValidatorConfig {
  /// URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client.
  final List<String>? mevRelayUrls;

  /// Creates a new [BlockchainNodesEthereumDetailsValidatorConfig].
  /// [mevRelayUrls] URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client.
  BlockchainNodesEthereumDetailsValidatorConfig({this.mevRelayUrls});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mevRelayUrls': ?mevRelayUrls};
  }

  factory BlockchainNodesEthereumDetailsValidatorConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BlockchainNodesEthereumDetailsValidatorConfig(
      mevRelayUrls: map['mevRelayUrls'] == null
          ? null
          : (map['mevRelayUrls'] as List).cast<String>(),
    );
  }
}
