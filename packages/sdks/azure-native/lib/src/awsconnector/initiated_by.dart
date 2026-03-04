/// Property value
enum InitiatedBy {
  cUSTOMER("CUSTOMER"),
  sERVICE("SERVICE");

  const InitiatedBy(this.wireValue);
  final String wireValue;

  static InitiatedBy fromValue(String value) {
    for (final item in InitiatedBy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitiatedBy value: $value');
  }
}
