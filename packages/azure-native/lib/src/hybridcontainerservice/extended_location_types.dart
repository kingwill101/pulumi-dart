/// The extended location type. Allowed value: 'CustomLocation'
enum ExtendedLocationTypes {
  valueCustomLocation("CustomLocation");

  const ExtendedLocationTypes(this.value);
  final String value;

  static ExtendedLocationTypes fromValue(String value) {
    for (final item in ExtendedLocationTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationTypes value: $value');
  }
}

