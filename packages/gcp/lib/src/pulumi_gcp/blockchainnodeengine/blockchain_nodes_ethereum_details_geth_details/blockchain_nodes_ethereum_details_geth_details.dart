// ignore_for_file: unused_element, unnecessary_cast

class BlockchainNodesEthereumDetailsGethDetails {
  /// Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE.
  /// Possible values are: `FULL`, `ARCHIVE`.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedEthereumDetailsAdditionalEndpoints"" pulumi-lang-dotnet=""NestedEthereumDetailsAdditionalEndpoints"" pulumi-lang-go=""nestedEthereumDetailsAdditionalEndpoints"" pulumi-lang-python=""nested_ethereum_details_additional_endpoints"" pulumi-lang-yaml=""nestedEthereumDetailsAdditionalEndpoints"" pulumi-lang-java=""nestedEthereumDetailsAdditionalEndpoints"">"nested_ethereum_details_additional_endpoints"</span>></a>The <span pulumi-lang-nodejs="`additionalEndpoints`" pulumi-lang-dotnet="`AdditionalEndpoints`" pulumi-lang-go="`additionalEndpoints`" pulumi-lang-python="`additional_endpoints`" pulumi-lang-yaml="`additionalEndpoints`" pulumi-lang-java="`additionalEndpoints`">`additional_endpoints`</span> block contains:
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
