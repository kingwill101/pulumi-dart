// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference.dart';

/// A WebLinkedService that uses basic authentication to communicate with an HTTP endpoint.
class WebBasicAuthentication {
  /// Type of authentication used to connect to the web table source.
  /// Expected value is 'Basic'.
  final String authenticationType;
  /// The password for Basic authentication.
  final AzureKeyVaultSecretReference password;
  /// The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  final dynamic url;
  /// User name for Basic authentication. Type: string (or Expression with resultType string).
  final dynamic username;

  /// Creates a new [WebBasicAuthentication].
  /// [authenticationType] Type of authentication used to connect to the web table source.
  /// [password] The password for Basic authentication.
  /// [url] The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  /// [username] User name for Basic authentication. Type: string (or Expression with resultType string).
  WebBasicAuthentication({
    required this.authenticationType,
    required this.password,
    required this.url,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'password': password.toMap(),
      'url': url,
      'username': username,
    };
  }

  factory WebBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return WebBasicAuthentication(
      authenticationType: map['authenticationType'] as String,
      password: AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      url: map['url'],
      username: map['username'],
    );
  }
}

