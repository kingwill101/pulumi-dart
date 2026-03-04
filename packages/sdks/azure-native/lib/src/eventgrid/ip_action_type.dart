/// Action to perform based on the match or no match of the IpMask.
enum IpActionType {
  valueAllow("Allow");

  const IpActionType(this.wireValue);
  final String wireValue;

  static IpActionType fromValue(String value) {
    for (final item in IpActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpActionType value: $value');
  }
}
