/// The type of key signature.
enum UefiKeyType {
  sha256("sha256"),
  x509("x509");

  const UefiKeyType(this.wireValue);
  final String wireValue;

  static UefiKeyType fromValue(String value) {
    for (final item in UefiKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UefiKeyType value: $value');
  }
}

