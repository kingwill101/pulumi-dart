/// Immutable. The execution client
enum EthereumDetailsExecutionClient {
  executionClientUnspecified("EXECUTION_CLIENT_UNSPECIFIED"),
  geth("GETH"),
  erigon("ERIGON");

  const EthereumDetailsExecutionClient(this.value);
  final String value;

  static EthereumDetailsExecutionClient fromValue(String value) {
    for (final item in EthereumDetailsExecutionClient.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EthereumDetailsExecutionClient value: $value');
  }
}

