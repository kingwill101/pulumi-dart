// ignore_for_file: unused_element, unnecessary_cast

import 'account_key_datastore_secrets.dart';

/// Account key datastore credentials configuration.
class AccountKeyDatastoreCredentials {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'AccountKey'.
  final String credentialsType;
  /// [Required] Storage account secrets.
  final AccountKeyDatastoreSecrets secrets;

  /// Creates a new [AccountKeyDatastoreCredentials].
  /// [credentialsType] Enum to determine the datastore credentials type.
  /// [secrets] [Required] Storage account secrets.
  AccountKeyDatastoreCredentials({
    required this.credentialsType,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsType': credentialsType,
      'secrets': secrets.toMap(),
    };
  }

  factory AccountKeyDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return AccountKeyDatastoreCredentials(
      credentialsType: map['credentialsType'] as String,
      secrets: AccountKeyDatastoreSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>()),
    );
  }
}

