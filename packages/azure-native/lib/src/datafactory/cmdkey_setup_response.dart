// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference_response.dart';

/// The custom setup of running cmdkey commands.
class CmdkeySetupResponse {
  /// The password of data source access.
  final AzureKeyVaultSecretReferenceResponse password;
  /// The server name of data source access. Type: string.
  final dynamic targetName;
  /// The type of custom setup.
  /// Expected value is 'CmdkeySetup'.
  final String type;
  /// The user name of data source access. Type: string.
  final dynamic userName;

  /// Creates a new [CmdkeySetupResponse].
  /// [password] The password of data source access.
  /// [targetName] The server name of data source access. Type: string.
  /// [type] The type of custom setup.
  /// [userName] The user name of data source access. Type: string.
  CmdkeySetupResponse({
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

  factory CmdkeySetupResponse.fromMap(Map<String, dynamic> map) {
    return CmdkeySetupResponse(
      password: AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      targetName: map['targetName'],
      type: map['type'] as String,
      userName: map['userName'],
    );
  }
}

