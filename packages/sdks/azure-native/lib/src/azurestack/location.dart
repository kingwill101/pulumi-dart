/// Location of the resource.
enum Location {
  valueGlobal("global");

  const Location(this.wireValue);
  final String wireValue;

  static Location fromValue(String value) {
    for (final item in Location.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Location value: $value');
  }
}
