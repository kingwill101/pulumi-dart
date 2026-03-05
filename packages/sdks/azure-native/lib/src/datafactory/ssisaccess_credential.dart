// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';

/// SSIS access credential.
class SSISAccessCredential {
  /// Domain for windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> domain;
  /// Password for windows authentication.
  final pulumi.Input<AzureKeyVaultSecretReference> password;
  /// UseName for windows authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> userName;

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
      'password': pulumi.Input.mapInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
      'userName': userName,
    };
  }

  factory SSISAccessCredential.fromMap(Map<String, dynamic> map) {
    return SSISAccessCredential(
      domain: pulumi.Input.fromValue(map['domain']),
      password: pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())),
      userName: pulumi.Input.fromValue(map['userName']),
    );
  }
}

