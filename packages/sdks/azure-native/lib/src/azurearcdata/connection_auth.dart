import 'package:pulumi/pulumi.dart' as pulumi;

/// Permitted authentication modes for the mirroring endpoint.
enum ConnectionAuth implements pulumi.PulumiEnum<String> {
  valueWindowsNTLM("Windows_NTLM"),
  valueWindowsKerberos("Windows_Kerberos"),
  valueWindowsNegotiate("Windows_Negotiate"),
  valueCertificate("Certificate"),
  valueWindowsNTLMCertificate("Windows_NTLM_Certificate"),
  valueWindowsKerberosCertificate("Windows_Kerberos_Certificate"),
  valueWindowsNegotiateCertificate("Windows_Negotiate_Certificate"),
  valueCertificateWindowsNTLM("Certificate_Windows_NTLM"),
  valueCertificateWindowsKerberos("Certificate_Windows_Kerberos"),
  valueCertificateWindowsNegotiate("Certificate_Windows_Negotiate");

  const ConnectionAuth(this.wireValue);
  @override
  final String wireValue;

  static ConnectionAuth fromValue(String value) {
    for (final item in ConnectionAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionAuth value: $value');
  }
}
