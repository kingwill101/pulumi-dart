// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigAdditionalVariableEncryptionKeyValue {
  /// The [KMS key name] with which the content of the Operation is encrypted. The
  /// expected format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
  /// Will be empty string if google managed.
  final String? kmsKeyName;

  /// Type of Encryption Key
  /// Possible values are: `GOOGLE_MANAGED`, `CUSTOMER_MANAGED`.
  final String type;

  /// Creates a new [ConnectionAuthConfigAdditionalVariableEncryptionKeyValue].
  /// [kmsKeyName] The [KMS key name] with which the content of the Operation is encrypted. The
  /// [type] Type of Encryption Key
  ConnectionAuthConfigAdditionalVariableEncryptionKeyValue({
    this.kmsKeyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': ?kmsKeyName, 'type': type};
  }

  factory ConnectionAuthConfigAdditionalVariableEncryptionKeyValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionAuthConfigAdditionalVariableEncryptionKeyValue(
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
      type: map['type'] as String,
    );
  }
}
