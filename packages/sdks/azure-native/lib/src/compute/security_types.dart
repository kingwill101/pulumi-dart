/// Specifies the SecurityType of the virtual machine. It has to be set to any specified value to enable UefiSettings. The default behavior is: UefiSettings will not be enabled unless this property is set and is not Standard. If not specified, Standard will be returned starting api version 2025-11-01.
enum SecurityTypes {
  trustedLaunch("TrustedLaunch"),
  confidentialVM("ConfidentialVM");

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
