// ignore_for_file: unused_element, unnecessary_cast

class TableEncryptionSpecification {
  /// The Amazon Resource Name (ARN) of the customer managed KMS key.
  final String? kmsKeyIdentifier;

  /// The encryption option specified for the table. Valid values: `AWS_OWNED_KMS_KEY`, `CUSTOMER_MANAGED_KMS_KEY`. The default value is `AWS_OWNED_KMS_KEY`.
  final String? type;

  /// Creates a new [TableEncryptionSpecification].
  /// [kmsKeyIdentifier] The Amazon Resource Name (ARN) of the customer managed KMS key.
  /// [type] The encryption option specified for the table. Valid values: `AWS_OWNED_KMS_KEY`, `CUSTOMER_MANAGED_KMS_KEY`. The default value is `AWS_OWNED_KMS_KEY`.
  TableEncryptionSpecification({
    this.kmsKeyIdentifier,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdentifierValue = kmsKeyIdentifier;
    if (kmsKeyIdentifierValue != null) {
      map['kmsKeyIdentifier'] = kmsKeyIdentifierValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TableEncryptionSpecification.fromMap(Map<String, dynamic> map) {
    return TableEncryptionSpecification(
      kmsKeyIdentifier: map['kmsKeyIdentifier'] == null
          ? null
          : map['kmsKeyIdentifier'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
