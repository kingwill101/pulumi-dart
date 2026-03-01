// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference.dart';

/// A WebLinkedService that uses client certificate based authentication to communicate with an HTTP endpoint. This scheme follows mutual authentication; the server must also provide valid credentials to the client.
class WebClientCertificateAuthentication {
  /// Type of authentication used to connect to the web table source.
  /// Expected value is 'ClientCertificate'.
  final String authenticationType;
  /// Password for the PFX file.
  final AzureKeyVaultSecretReference password;
  /// Base64-encoded contents of a PFX file.
  final AzureKeyVaultSecretReference pfx;
  /// The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  final dynamic url;

  /// Creates a new [WebClientCertificateAuthentication].
  /// [authenticationType] Type of authentication used to connect to the web table source.
  /// [password] Password for the PFX file.
  /// [pfx] Base64-encoded contents of a PFX file.
  /// [url] The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  WebClientCertificateAuthentication({
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

  factory WebClientCertificateAuthentication.fromMap(Map<String, dynamic> map) {
    return WebClientCertificateAuthentication(
      authenticationType: map['authenticationType'] as String,
      password: AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      pfx: AzureKeyVaultSecretReference.fromMap((map['pfx'] as Map).cast<String, dynamic>()),
      url: map['url'],
    );
  }
}

