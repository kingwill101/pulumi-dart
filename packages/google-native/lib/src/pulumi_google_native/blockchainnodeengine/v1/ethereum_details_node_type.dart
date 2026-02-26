/// Immutable. The type of Ethereum node.
enum EthereumDetailsNodeType {
  nodeTypeUnspecified("NODE_TYPE_UNSPECIFIED"),
  light("LIGHT"),
  full("FULL"),
  archive("ARCHIVE");

  const EthereumDetailsNodeType(this.value);
  final String value;

  static EthereumDetailsNodeType fromValue(String value) {
    for (final item in EthereumDetailsNodeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EthereumDetailsNodeType value: $value');
  }
}
