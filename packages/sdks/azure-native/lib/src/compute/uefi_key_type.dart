/// The type of key signature.
enum UefiKeyType {
  sha256("sha256"),
  x509("x509");

  const UefiKeyType(this.value);
  final String value;

  static UefiKeyType fromValue(String value) {
    for (final item in UefiKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UefiKeyType value: $value');
  }
}

