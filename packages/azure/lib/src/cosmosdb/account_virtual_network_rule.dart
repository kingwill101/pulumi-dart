// ignore_for_file: unused_element, unnecessary_cast


class AccountVirtualNetworkRule {
  /// The ID of the virtual network subnet.
  final String id;
  /// If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to `false`.
  final bool? ignoreMissingVnetServiceEndpoint;

  /// Creates a new [AccountVirtualNetworkRule].
  /// [id] The ID of the virtual network subnet.
  /// [ignoreMissingVnetServiceEndpoint] If set to true, the specified subnet will be added as a virtual network rule even if its CosmosDB service endpoint is not active. Defaults to `false`.
  AccountVirtualNetworkRule({
    required this.id,
    this.ignoreMissingVnetServiceEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
    };
  }

  factory AccountVirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return AccountVirtualNetworkRule(
      id: map['id'] as String,
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
    );
  }
}

