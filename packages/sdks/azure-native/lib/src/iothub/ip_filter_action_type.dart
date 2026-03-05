/// The desired action for requests captured by this rule.
enum IpFilterActionType {
  valueAccept("Accept"),
  valueReject("Reject");

  const IpFilterActionType(this.wireValue);
  final String wireValue;

  static IpFilterActionType fromValue(String value) {
    for (final item in IpFilterActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpFilterActionType value: $value');
  }
}

