/// The authentication type to be used to connect to the SAP HANA server.
enum SapHanaAuthenticationType {
  basic("Basic"),
  windows("Windows");

  const SapHanaAuthenticationType(this.wireValue);
  final String wireValue;

  static SapHanaAuthenticationType fromValue(String value) {
    for (final item in SapHanaAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SapHanaAuthenticationType value: $value');
  }
}
