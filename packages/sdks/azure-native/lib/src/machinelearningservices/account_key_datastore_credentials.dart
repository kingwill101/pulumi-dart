// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_key_datastore_secrets.dart';

/// Account key datastore credentials configuration.
class AccountKeyDatastoreCredentials {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'AccountKey'.
  final pulumi.Input<String> credentialsType;
  /// [Required] Storage account secrets.
  final pulumi.Input<AccountKeyDatastoreSecrets> secrets;

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
      'secrets': pulumi.Input.mapInputValue<AccountKeyDatastoreSecrets, Map<String, dynamic>>(secrets, (value) => value.toMap()),
    };
  }

  factory AccountKeyDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return AccountKeyDatastoreCredentials(
      credentialsType: (map['credentialsType'] as String).input(),
      secrets: (AccountKeyDatastoreSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

