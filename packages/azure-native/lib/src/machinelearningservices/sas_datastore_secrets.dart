// ignore_for_file: unused_element, unnecessary_cast


/// Datastore SAS secrets.
class SasDatastoreSecrets {
  /// Storage container SAS token.
  final String? sasToken;
  /// Enum to determine the datastore secrets type.
  /// Expected value is 'Sas'.
  final String secretsType;

  /// Creates a new [SasDatastoreSecrets].
  /// [sasToken] Storage container SAS token.
  /// [secretsType] Enum to determine the datastore secrets type.
  SasDatastoreSecrets({
    this.sasToken,
    required this.secretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasToken': ?sasToken,
      'secretsType': secretsType,
    };
  }

  factory SasDatastoreSecrets.fromMap(Map<String, dynamic> map) {
    return SasDatastoreSecrets(
      sasToken: map['sasToken'] == null ? null : map['sasToken'] as String,
      secretsType: map['secretsType'] as String,
    );
  }
}

