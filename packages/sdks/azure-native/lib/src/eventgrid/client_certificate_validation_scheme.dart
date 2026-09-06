import 'package:pulumi/pulumi.dart' as pulumi;

/// The validation scheme used to authenticate the client. Default value is SubjectMatchesAuthenticationName.
enum ClientCertificateValidationScheme implements pulumi.PulumiEnum<String> {
  valueSubjectMatchesAuthenticationName("SubjectMatchesAuthenticationName"),
  valueDnsMatchesAuthenticationName("DnsMatchesAuthenticationName"),
  valueUriMatchesAuthenticationName("UriMatchesAuthenticationName"),
  valueIpMatchesAuthenticationName("IpMatchesAuthenticationName"),
  valueEmailMatchesAuthenticationName("EmailMatchesAuthenticationName"),
  valueThumbprintMatch("ThumbprintMatch");

  const ClientCertificateValidationScheme(this.wireValue);
  @override
  final String wireValue;

  static ClientCertificateValidationScheme fromValue(String value) {
    for (final item in ClientCertificateValidationScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientCertificateValidationScheme value: $value');
  }
}
