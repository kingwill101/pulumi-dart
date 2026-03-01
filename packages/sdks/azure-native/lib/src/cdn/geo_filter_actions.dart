/// Action of the geo filter, i.e. allow or block access.
enum GeoFilterActions {
  valueBlock("Block"),
  valueAllow("Allow");

  const GeoFilterActions(this.value);
  final String value;

  static GeoFilterActions fromValue(String value) {
    for (final item in GeoFilterActions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoFilterActions value: $value');
  }
}

