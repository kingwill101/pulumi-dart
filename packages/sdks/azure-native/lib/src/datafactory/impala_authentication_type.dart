/// The authentication type to use.
enum ImpalaAuthenticationType {
  anonymous("Anonymous"),
  sASLUsername("SASLUsername"),
  usernameAndPassword("UsernameAndPassword");

  const ImpalaAuthenticationType(this.wireValue);
  final String wireValue;

  static ImpalaAuthenticationType fromValue(String value) {
    for (final item in ImpalaAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImpalaAuthenticationType value: $value');
  }
}
