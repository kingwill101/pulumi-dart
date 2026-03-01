/// The Kind of the managed network. Users can switch from V1 to V2 for granular access controls, but cannot switch back to V1 once V2 is enabled.
enum ManagedNetworkKind {
  valueV1("V1"),
  valueV2("V2");

  const ManagedNetworkKind(this.value);
  final String value;

  static ManagedNetworkKind fromValue(String value) {
    for (final item in ManagedNetworkKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedNetworkKind value: $value');
  }
}

