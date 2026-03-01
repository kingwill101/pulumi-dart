/// Property value
enum InitiatedBy {
  cUSTOMER("CUSTOMER"),
  sERVICE("SERVICE");

  const InitiatedBy(this.value);
  final String value;

  static InitiatedBy fromValue(String value) {
    for (final item in InitiatedBy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitiatedBy value: $value');
  }
}

