// ignore_for_file: unused_element, unnecessary_cast


/// Datastore account key secrets.
class AccountKeyDatastoreSecrets {
  /// Storage account key.
  final String? key;
  /// Enum to determine the datastore secrets type.
  /// Expected value is 'AccountKey'.
  final String secretsType;

  /// Creates a new [AccountKeyDatastoreSecrets].
  /// [key] Storage account key.
  /// [secretsType] Enum to determine the datastore secrets type.
  AccountKeyDatastoreSecrets({
    this.key,
    required this.secretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'secretsType': secretsType,
    };
  }

  factory AccountKeyDatastoreSecrets.fromMap(Map<String, dynamic> map) {
    return AccountKeyDatastoreSecrets(
      key: map['key'] == null ? null : map['key'] as String,
      secretsType: map['secretsType'] as String,
    );
  }
}

