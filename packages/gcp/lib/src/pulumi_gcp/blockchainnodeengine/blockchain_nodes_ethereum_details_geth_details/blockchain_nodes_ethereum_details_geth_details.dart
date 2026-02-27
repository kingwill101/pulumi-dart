// ignore_for_file: unused_element, unnecessary_cast

class BlockchainNodesEthereumDetailsGethDetails {
  /// Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE.
  /// Possible values are: `FULL`, `ARCHIVE`.
  ///
  /// <a name="nested_ethereum_details_additional_endpoints"></a>The `additional_endpoints` block contains:
  final String? garbageCollectionMode;

  BlockchainNodesEthereumDetailsGethDetails({
    this.garbageCollectionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final garbageCollectionModeValue = garbageCollectionMode;
    if (garbageCollectionModeValue != null) {
      map['garbageCollectionMode'] = garbageCollectionModeValue;
    }
    return map;
  }

  factory BlockchainNodesEthereumDetailsGethDetails.fromMap(
      Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetailsGethDetails(
      garbageCollectionMode: map['garbageCollectionMode'] == null
          ? null
          : map['garbageCollectionMode'] as String,
    );
  }
}
