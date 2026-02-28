// ignore_for_file: unused_element, unnecessary_cast

class ToolsetOpenApiToolsetTlsConfigCaCert {
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
  final String cert;

  /// The name of the allowed custom CA certificates. This
  /// can be used to disambiguate the custom CA certificates.
  final String displayName;

  /// Creates a new [ToolsetOpenApiToolsetTlsConfigCaCert].
  /// [cert] The allowed custom CA certificates (in DER format) for
  /// [displayName] The name of the allowed custom CA certificates. This
  ToolsetOpenApiToolsetTlsConfigCaCert({
    required this.cert,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cert'] = cert;
    map['displayName'] = displayName;
    return map;
  }

  factory ToolsetOpenApiToolsetTlsConfigCaCert.fromMap(
      Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetTlsConfigCaCert(
      cert: map['cert'] as String,
      displayName: map['displayName'] as String,
    );
  }
}
