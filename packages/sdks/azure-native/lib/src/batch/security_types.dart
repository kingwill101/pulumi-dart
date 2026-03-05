/// Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings.
enum SecurityTypes {
  trustedLaunch("trustedLaunch"),
  confidentialVM("confidentialVM");

  const SecurityTypes(this.wireValue);
  final String wireValue;

  static SecurityTypes fromValue(String value) {
    for (final item in SecurityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityTypes value: $value');
  }
}

