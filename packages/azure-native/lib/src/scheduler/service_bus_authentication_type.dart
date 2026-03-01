/// Gets or sets the authentication type.
enum ServiceBusAuthenticationType {
  valueNotSpecified("NotSpecified"),
  valueSharedAccessKey("SharedAccessKey");

  const ServiceBusAuthenticationType(this.value);
  final String value;

  static ServiceBusAuthenticationType fromValue(String value) {
    for (final item in ServiceBusAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceBusAuthenticationType value: $value');
  }
}

