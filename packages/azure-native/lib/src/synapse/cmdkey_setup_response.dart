// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string_response.dart';

/// The custom setup of running cmdkey commands.
class CmdkeySetupResponse {
  /// The password of data source access.
  final SecureStringResponse password;
  /// The server name of data source access.
  final dynamic targetName;
  /// The type of custom setup.
  /// Expected value is 'CmdkeySetup'.
  final String type;
  /// The user name of data source access.
  final dynamic userName;

  /// Creates a new [CmdkeySetupResponse].
  /// [password] The password of data source access.
  /// [targetName] The server name of data source access.
  /// [type] The type of custom setup.
  /// [userName] The user name of data source access.
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
      password: SecureStringResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      targetName: map['targetName'],
      type: map['type'] as String,
      userName: map['userName'],
    );
  }
}

