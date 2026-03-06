// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';

/// A WebLinkedService that uses basic authentication to communicate with an HTTP endpoint.
class WebBasicAuthentication {
  /// Type of authentication used to connect to the web table source.
  /// Expected value is 'Basic'.
  final pulumi.Input<String> authenticationType;
  /// The password for Basic authentication.
  final pulumi.Input<AzureKeyVaultSecretReference> password;
  /// The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// User name for Basic authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> username;

  /// Creates a new [WebBasicAuthentication].
  /// [authenticationType] Type of authentication used to connect to the web table source.
  /// [password] The password for Basic authentication.
  /// [url] The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  /// [username] User name for Basic authentication. Type: string (or Expression with resultType string).
  const WebBasicAuthentication({
    required this.authenticationType,
    required this.password,
    required this.url,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'password': pulumi.Input.mapInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'url': url,
      'username': username,
    };
  }

  factory WebBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return WebBasicAuthentication(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      password: pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())),
      url: pulumi.Input.fromValue(map['url']),
      username: pulumi.Input.fromValue(map['username']),
    );
  }
}

