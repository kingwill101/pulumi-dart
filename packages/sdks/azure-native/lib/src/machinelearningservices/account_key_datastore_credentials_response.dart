// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Account key datastore credentials configuration.
class AccountKeyDatastoreCredentialsResponse {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'AccountKey'.
  final pulumi.Input<String> credentialsType;

  /// Creates a new [AccountKeyDatastoreCredentialsResponse].
  /// [credentialsType] Enum to determine the datastore credentials type.
  const AccountKeyDatastoreCredentialsResponse({
    required this.credentialsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsType': credentialsType,
    };
  }

  factory AccountKeyDatastoreCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AccountKeyDatastoreCredentialsResponse(
      credentialsType: pulumi.Input.fromValue(map['credentialsType'] as String),
    );
  }
}

