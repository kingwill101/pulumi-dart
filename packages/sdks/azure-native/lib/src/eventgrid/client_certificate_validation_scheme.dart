/// The validation scheme used to authenticate the client. Default value is SubjectMatchesAuthenticationName.
enum ClientCertificateValidationScheme {
  valueSubjectMatchesAuthenticationName("SubjectMatchesAuthenticationName"),
  valueDnsMatchesAuthenticationName("DnsMatchesAuthenticationName"),
  valueUriMatchesAuthenticationName("UriMatchesAuthenticationName"),
  valueIpMatchesAuthenticationName("IpMatchesAuthenticationName"),
  valueEmailMatchesAuthenticationName("EmailMatchesAuthenticationName"),
  valueThumbprintMatch("ThumbprintMatch");

  const ClientCertificateValidationScheme(this.value);
  final String value;

  static ClientCertificateValidationScheme fromValue(String value) {
    for (final item in ClientCertificateValidationScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientCertificateValidationScheme value: $value');
  }
}

