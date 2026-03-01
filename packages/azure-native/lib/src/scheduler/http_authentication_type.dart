/// Gets or sets the HTTP authentication type.
enum HttpAuthenticationType {
  valueNotSpecified("NotSpecified"),
  valueClientCertificate("ClientCertificate"),
  valueActiveDirectoryOAuth("ActiveDirectoryOAuth"),
  valueBasic("Basic");

  const HttpAuthenticationType(this.value);
  final String value;

  static HttpAuthenticationType fromValue(String value) {
    for (final item in HttpAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpAuthenticationType value: $value');
  }
}

