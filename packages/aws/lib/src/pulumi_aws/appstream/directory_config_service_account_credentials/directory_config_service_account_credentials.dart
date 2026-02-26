// ignore_for_file: unused_element, unnecessary_cast

class DirectoryConfigServiceAccountCredentials {
  /// User name of the account. This account must have the following privileges: create computer objects, join computers to the domain, and change/reset the password on descendant computer objects for the organizational units specified.
  final String accountName;

  /// Password for the account.
  final String accountPassword;

  DirectoryConfigServiceAccountCredentials({
    required this.accountName,
    required this.accountPassword,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountName'] = accountName;
    map['accountPassword'] = accountPassword;
    return map;
  }

  factory DirectoryConfigServiceAccountCredentials.fromMap(
      Map<String, dynamic> map) {
    return DirectoryConfigServiceAccountCredentials(
      accountName: map['accountName'] as String,
      accountPassword: map['accountPassword'] as String,
    );
  }
}
