// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The custom setup of running cmdkey commands.
class CmdkeySetup {
  /// The password of data source access.
  final pulumi.Input<dynamic> password;
  /// The server name of data source access. Type: string.
  final pulumi.Input<dynamic> targetName;
  /// The type of custom setup.
  /// Expected value is 'CmdkeySetup'.
  final pulumi.Input<String> type;
  /// The user name of data source access. Type: string.
  final pulumi.Input<dynamic> userName;

  /// Creates a new [CmdkeySetup].
  /// [password] The password of data source access.
  /// [targetName] The server name of data source access. Type: string.
  /// [type] The type of custom setup.
  /// [userName] The user name of data source access. Type: string.
  const CmdkeySetup({
    required this.password,
    required this.targetName,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'targetName': targetName,
      'type': type,
      'userName': userName,
    };
  }

  factory CmdkeySetup.fromMap(Map<String, dynamic> map) {
    return CmdkeySetup(
      password: pulumi.Input.fromValue(map['password']),
      targetName: pulumi.Input.fromValue(map['targetName']),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue(map['userName']),
    );
  }
}
