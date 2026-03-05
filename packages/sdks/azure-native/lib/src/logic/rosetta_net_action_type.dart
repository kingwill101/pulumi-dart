/// The value indicating whether the RosettaNet PIP is used for a single action.
enum RosettaNetActionType {
  valueNotSpecified("NotSpecified"),
  valueSingleAction("SingleAction"),
  valueDoubleAction("DoubleAction");

  const RosettaNetActionType(this.wireValue);
  final String wireValue;

  static RosettaNetActionType fromValue(String value) {
    for (final item in RosettaNetActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RosettaNetActionType value: $value');
  }
}

