// ignore_for_file: unused_element, unnecessary_cast

class ToolOpenApiToolTlsConfigCaCert {
  /// (Output)
  /// The allowed custom CA certificates (in DER format) for
  /// HTTPS verification. This overrides the default SSL trust store. If this
  /// is empty or unspecified, CES will use Google's default trust
  /// store to verify certificates. N.B. Make sure the HTTPS server
  /// certificates are signed with "subject alt name". For instance a
  /// certificate can be self-signed using the following command,
  /// openssl x509 -req -days 200 -in example.com.csr \
  /// -signkey example.com.key \
  /// -out example.com.crt \
  /// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
  /// A base64-encoded string.
  final String? cert;

  /// (Output)
  /// The name of the allowed custom CA certificates. This
  /// can be used to disambiguate the custom CA certificates.
  final String? displayName;

  /// Creates a new [ToolOpenApiToolTlsConfigCaCert].
  /// [cert] (Output)
  /// [displayName] (Output)
  ToolOpenApiToolTlsConfigCaCert({
    this.cert,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certValue = cert;
    if (certValue != null) {
      map['cert'] = certValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    return map;
  }

  factory ToolOpenApiToolTlsConfigCaCert.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolTlsConfigCaCert(
      cert: map['cert'] == null ? null : map['cert'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}
