/// The type of peering set for this internal range.
enum InternalRangePeering {
  peeringUnspecified("PEERING_UNSPECIFIED"),
  forSelf("FOR_SELF"),
  forPeer("FOR_PEER"),
  notShared("NOT_SHARED");

  const InternalRangePeering(this.value);
  final String value;

  static InternalRangePeering fromValue(String value) {
    for (final item in InternalRangePeering.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangePeering value: $value');
  }
}
