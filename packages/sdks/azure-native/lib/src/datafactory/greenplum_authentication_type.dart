/// The authentication type to use. Type: string. Only used for V2.
enum GreenplumAuthenticationType {
  valueBasic("Basic");

  const GreenplumAuthenticationType(this.wireValue);
  final String wireValue;

  static GreenplumAuthenticationType fromValue(String value) {
    for (final item in GreenplumAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GreenplumAuthenticationType value: $value');
  }
}
