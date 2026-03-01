/// Location of the resource.
enum Location {
  valueGlobal("global");

  const Location(this.value);
  final String value;

  static Location fromValue(String value) {
    for (final item in Location.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Location value: $value');
  }
}

