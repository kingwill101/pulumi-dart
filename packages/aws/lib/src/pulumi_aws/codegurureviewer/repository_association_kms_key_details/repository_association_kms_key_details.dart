// ignore_for_file: unused_element, unnecessary_cast

class RepositoryAssociationKmsKeyDetails {
  /// The encryption option for a repository association. It is either owned by AWS Key Management Service (KMS) (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
  final String? encryptionOption;

  /// The ID of the AWS KMS key that is associated with a repository association.
  final String? kmsKeyId;

  RepositoryAssociationKmsKeyDetails({
    this.encryptionOption,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionOptionValue = encryptionOption;
    if (encryptionOptionValue != null) {
      map['encryptionOption'] = encryptionOptionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    return map;
  }

  factory RepositoryAssociationKmsKeyDetails.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationKmsKeyDetails(
      encryptionOption: map['encryptionOption'] == null
          ? null
          : map['encryptionOption'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}
