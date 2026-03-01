// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference_response.dart';

/// SSIS access credential.
class SSISAccessCredentialResponse {
  /// Domain for windows authentication. Type: string (or Expression with resultType string).
  final dynamic domain;
  /// Password for windows authentication.
  final AzureKeyVaultSecretReferenceResponse password;
  /// UseName for windows authentication. Type: string (or Expression with resultType string).
  final dynamic userName;

  /// Creates a new [SSISAccessCredentialResponse].
  /// [domain] Domain for windows authentication. Type: string (or Expression with resultType string).
  /// [password] Password for windows authentication.
  /// [userName] UseName for windows authentication. Type: string (or Expression with resultType string).
  SSISAccessCredentialResponse({
    required this.domain,
    required this.password,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'password': password.toMap(),
      'userName': userName,
    };
  }

  factory SSISAccessCredentialResponse.fromMap(Map<String, dynamic> map) {
    return SSISAccessCredentialResponse(
      domain: map['domain'],
      password: AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      userName: map['userName'],
    );
  }
}

