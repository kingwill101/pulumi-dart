/// The authentication type to use.
enum ImpalaAuthenticationType {
  valueAnonymous("Anonymous"),
  valueSASLUsername("SASLUsername"),
  valueUsernameAndPassword("UsernameAndPassword");

  const ImpalaAuthenticationType(this.value);
  final String value;

  static ImpalaAuthenticationType fromValue(String value) {
    for (final item in ImpalaAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImpalaAuthenticationType value: $value');
  }
}

