// ignore_for_file: unused_element, unnecessary_cast


class RepositoryAssociationKmsKeyDetails {
  /// The encryption option for a repository association. It is either owned by AWS Key Management Service (KMS) (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
  final String? encryptionOption;
  /// The ID of the AWS KMS key that is associated with a repository association.
  final String? kmsKeyId;

  /// Creates a new [RepositoryAssociationKmsKeyDetails].
  /// [encryptionOption] The encryption option for a repository association. It is either owned by AWS Key Management Service (KMS) (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
  /// [kmsKeyId] The ID of the AWS KMS key that is associated with a repository association.
  RepositoryAssociationKmsKeyDetails({
    this.encryptionOption,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionOption': ?encryptionOption,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory RepositoryAssociationKmsKeyDetails.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationKmsKeyDetails(
      encryptionOption: map['encryptionOption'] == null ? null : map['encryptionOption'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}

