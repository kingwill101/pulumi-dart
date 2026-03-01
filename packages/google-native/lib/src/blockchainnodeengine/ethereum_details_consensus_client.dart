/// Immutable. The consensus client.
enum EthereumDetailsConsensusClient {
  consensusClientUnspecified("CONSENSUS_CLIENT_UNSPECIFIED"),
  lighthouse("LIGHTHOUSE"),
  erigonEmbeddedConsensusLayer("ERIGON_EMBEDDED_CONSENSUS_LAYER");

  const EthereumDetailsConsensusClient(this.value);
  final String value;

  static EthereumDetailsConsensusClient fromValue(String value) {
    for (final item in EthereumDetailsConsensusClient.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EthereumDetailsConsensusClient value: $value');
  }
}
