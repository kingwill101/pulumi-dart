/// Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, restricted/unrestricted service lists as well as access lists must be empty.
enum ServicePerimeterPerimeterType2 {
  perimeterTypeRegular("PERIMETER_TYPE_REGULAR"),
  perimeterTypeBridge("PERIMETER_TYPE_BRIDGE");

  const ServicePerimeterPerimeterType2(this.value);
  final String value;

  static ServicePerimeterPerimeterType2 fromValue(String value) {
    for (final item in ServicePerimeterPerimeterType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServicePerimeterPerimeterType2 value: $value');
  }
}
