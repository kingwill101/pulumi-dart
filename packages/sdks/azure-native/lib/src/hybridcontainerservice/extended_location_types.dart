/// The extended location type. Allowed value: 'CustomLocation'
enum ExtendedLocationTypes {
  valueCustomLocation("CustomLocation");

  const ExtendedLocationTypes(this.wireValue);
  final String wireValue;

  static ExtendedLocationTypes fromValue(String value) {
    for (final item in ExtendedLocationTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtendedLocationTypes value: $value');
  }
}

