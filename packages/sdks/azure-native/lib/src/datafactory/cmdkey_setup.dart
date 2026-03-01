// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference.dart';

/// The custom setup of running cmdkey commands.
class CmdkeySetup {
  /// The password of data source access.
  final AzureKeyVaultSecretReference password;
  /// The server name of data source access. Type: string.
  final dynamic targetName;
  /// The type of custom setup.
  /// Expected value is 'CmdkeySetup'.
  final String type;
  /// The user name of data source access. Type: string.
  final dynamic userName;

  /// Creates a new [CmdkeySetup].
  /// [password] The password of data source access.
  /// [targetName] The server name of data source access. Type: string.
  /// [type] The type of custom setup.
  /// [userName] The user name of data source access. Type: string.
  CmdkeySetup({
    required this.password,
    required this.targetName,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password.toMap(),
      'targetName': targetName,
      'type': type,
      'userName': userName,
    };
  }

  factory CmdkeySetup.fromMap(Map<String, dynamic> map) {
    return CmdkeySetup(
      password: AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      targetName: map['targetName'],
      type: map['type'] as String,
      userName: map['userName'],
    );
  }
}

