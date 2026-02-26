/// The type of peering set for this internal range.
enum InternalRangePeering2 {
  peeringUnspecified("PEERING_UNSPECIFIED"),
  forSelf("FOR_SELF"),
  forPeer("FOR_PEER"),
  notShared("NOT_SHARED");

  const InternalRangePeering2(this.value);
  final String value;

  static InternalRangePeering2 fromValue(String value) {
    for (final item in InternalRangePeering2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangePeering2 value: $value');
  }
}
