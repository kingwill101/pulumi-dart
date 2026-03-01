// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference_response.dart';

/// A WebLinkedService that uses client certificate based authentication to communicate with an HTTP endpoint. This scheme follows mutual authentication; the server must also provide valid credentials to the client.
class WebClientCertificateAuthenticationResponse {
  /// Type of authentication used to connect to the web table source.
  /// Expected value is 'ClientCertificate'.
  final String authenticationType;
  /// Password for the PFX file.
  final AzureKeyVaultSecretReferenceResponse password;
  /// Base64-encoded contents of a PFX file.
  final AzureKeyVaultSecretReferenceResponse pfx;
  /// The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  final dynamic url;

  /// Creates a new [WebClientCertificateAuthenticationResponse].
  /// [authenticationType] Type of authentication used to connect to the web table source.
  /// [password] Password for the PFX file.
  /// [pfx] Base64-encoded contents of a PFX file.
  /// [url] The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  WebClientCertificateAuthenticationResponse({
    required this.authenticationType,
    required this.password,
    required this.pfx,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'password': password.toMap(),
      'pfx': pfx.toMap(),
      'url': url,
    };
  }

  factory WebClientCertificateAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return WebClientCertificateAuthenticationResponse(
      authenticationType: map['authenticationType'] as String,
      password: AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      pfx: AzureKeyVaultSecretReferenceResponse.fromMap((map['pfx'] as Map).cast<String, dynamic>()),
      url: map['url'],
    );
  }
}

