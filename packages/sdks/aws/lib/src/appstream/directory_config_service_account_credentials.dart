// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryConfigServiceAccountCredentials {
  /// User name of the account. This account must have the following privileges: create computer objects, join computers to the domain, and change/reset the password on descendant computer objects for the organizational units specified.
  final pulumi.Input<String> accountName;
  /// Password for the account.
  final pulumi.Input<String> accountPassword;

  /// Creates a new [DirectoryConfigServiceAccountCredentials].
  /// [accountName] User name of the account. This account must have the following privileges: create computer objects, join computers to the domain, and change/reset the password on descendant computer objects for the organizational units specified.
  /// [accountPassword] Password for the account.
  const DirectoryConfigServiceAccountCredentials({
    required this.accountName,
    required this.accountPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'accountPassword': accountPassword,
    };
  }

  factory DirectoryConfigServiceAccountCredentials.fromMap(Map<String, dynamic> map) {
    return DirectoryConfigServiceAccountCredentials(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      accountPassword: pulumi.Input.fromValue(map['accountPassword'] as String),
    );
  }
}

