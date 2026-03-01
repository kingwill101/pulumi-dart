// ignore_for_file: unused_element, unnecessary_cast


/// Account key datastore credentials configuration.
class AccountKeyDatastoreCredentialsResponse {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'AccountKey'.
  final String credentialsType;

  /// Creates a new [AccountKeyDatastoreCredentialsResponse].
  /// [credentialsType] Enum to determine the datastore credentials type.
  AccountKeyDatastoreCredentialsResponse({
    required this.credentialsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsType': credentialsType,
    };
  }

  factory AccountKeyDatastoreCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return AccountKeyDatastoreCredentialsResponse(
      credentialsType: map['credentialsType'] as String,
    );
  }
}

