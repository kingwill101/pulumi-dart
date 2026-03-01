// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference.dart';

/// SSIS access credential.
class SSISAccessCredential {
  /// Domain for windows authentication. Type: string (or Expression with resultType string).
  final dynamic domain;
  /// Password for windows authentication.
  final AzureKeyVaultSecretReference password;
  /// UseName for windows authentication. Type: string (or Expression with resultType string).
  final dynamic userName;

  /// Creates a new [SSISAccessCredential].
  /// [domain] Domain for windows authentication. Type: string (or Expression with resultType string).
  /// [password] Password for windows authentication.
  /// [userName] UseName for windows authentication. Type: string (or Expression with resultType string).
  SSISAccessCredential({
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

  factory SSISAccessCredential.fromMap(Map<String, dynamic> map) {
    return SSISAccessCredential(
      domain: map['domain'],
      password: AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      userName: map['userName'],
    );
  }
}

