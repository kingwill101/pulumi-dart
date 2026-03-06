// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryAssociationKmsKeyDetails {
  /// The encryption option for a repository association. It is either owned by AWS Key Management Service (KMS) (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
  final pulumi.Input<String>? encryptionOption;
  /// The ID of the AWS KMS key that is associated with a repository association.
  final pulumi.Input<String>? kmsKeyId;

  /// Creates a new [RepositoryAssociationKmsKeyDetails].
  /// [encryptionOption] The encryption option for a repository association. It is either owned by AWS Key Management Service (KMS) (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
  /// [kmsKeyId] The ID of the AWS KMS key that is associated with a repository association.
  const RepositoryAssociationKmsKeyDetails({
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
      encryptionOption: (() { final guardedValue = map['encryptionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

