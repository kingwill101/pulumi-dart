/// The type of the policy to be used. Default is Placement.
enum PropagationType {
  placement("Placement");

  const PropagationType(this.wireValue);
  final String wireValue;

  static PropagationType fromValue(String value) {
    for (final item in PropagationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropagationType value: $value');
  }
}
