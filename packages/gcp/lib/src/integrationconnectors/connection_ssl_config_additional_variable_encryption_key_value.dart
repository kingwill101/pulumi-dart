// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSslConfigAdditionalVariableEncryptionKeyValue {
  /// The [KMS key name] with which the content of the Operation is encrypted. The
  /// expected format: projects/*/locations/*/keyRings/*/cryptoKeys/*.
  /// Will be empty string if google managed.
  final String? kmsKeyName;

  /// Type of Encryption Key
  /// Possible values are: `GOOGLE_MANAGED`, `CUSTOMER_MANAGED`.
  final String? type;

  /// Creates a new [ConnectionSslConfigAdditionalVariableEncryptionKeyValue].
  /// [kmsKeyName] The [KMS key name] with which the content of the Operation is encrypted. The
  /// [type] Type of Encryption Key
  ConnectionSslConfigAdditionalVariableEncryptionKeyValue({
    this.kmsKeyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': ?kmsKeyName, 'type': ?type};
  }

  factory ConnectionSslConfigAdditionalVariableEncryptionKeyValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionSslConfigAdditionalVariableEncryptionKeyValue(
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
