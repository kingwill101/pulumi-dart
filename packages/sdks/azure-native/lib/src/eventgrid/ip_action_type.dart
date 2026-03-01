/// Action to perform based on the match or no match of the IpMask.
enum IpActionType {
  valueAllow("Allow");

  const IpActionType(this.value);
  final String value;

  static IpActionType fromValue(String value) {
    for (final item in IpActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpActionType value: $value');
  }
}

