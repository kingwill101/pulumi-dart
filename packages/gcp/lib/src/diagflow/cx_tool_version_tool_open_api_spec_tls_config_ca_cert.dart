// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolOpenApiSpecTlsConfigCaCert {
  /// The allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store.
  /// If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates.
  /// N.B. Make sure the HTTPS server certificates are signed with "subject alt name".
  /// For instance a certificate can be self-signed using the following command:
  /// ```
  /// openssl x509 -req -days 200 -in example.com.csr \
  /// -signkey example.com.key \
  /// -out example.com.crt \
  /// -extfile <(printf "\nsubjectAltName='DNS:www.example.com'")
  /// ```
  /// A base64-encoded string.
  final String cert;

  /// The name of the allowed custom CA certificates. This can be used to disambiguate the custom CA certificates.
  final String displayName;

  /// Creates a new [CxToolVersionToolOpenApiSpecTlsConfigCaCert].
  /// [cert] The allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store.
  /// [displayName] The name of the allowed custom CA certificates. This can be used to disambiguate the custom CA certificates.
  CxToolVersionToolOpenApiSpecTlsConfigCaCert({
    required this.cert,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cert': cert, 'displayName': displayName};
  }

  factory CxToolVersionToolOpenApiSpecTlsConfigCaCert.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolOpenApiSpecTlsConfigCaCert(
      cert: map['cert'] as String,
      displayName: map['displayName'] as String,
    );
  }
}
