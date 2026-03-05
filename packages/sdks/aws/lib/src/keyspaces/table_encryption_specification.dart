// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableEncryptionSpecification {
  /// The Amazon Resource Name (ARN) of the customer managed KMS key.
  final pulumi.Input<String>? kmsKeyIdentifier;
  /// The encryption option specified for the table. Valid values: `AWS_OWNED_KMS_KEY`, `CUSTOMER_MANAGED_KMS_KEY`. The default value is `AWS_OWNED_KMS_KEY`.
  final pulumi.Input<String>? type;

  /// Creates a new [TableEncryptionSpecification].
  /// [kmsKeyIdentifier] The Amazon Resource Name (ARN) of the customer managed KMS key.
  /// [type] The encryption option specified for the table. Valid values: `AWS_OWNED_KMS_KEY`, `CUSTOMER_MANAGED_KMS_KEY`. The default value is `AWS_OWNED_KMS_KEY`.
  TableEncryptionSpecification({
    this.kmsKeyIdentifier,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyIdentifier': ?kmsKeyIdentifier,
      'type': ?type,
    };
  }

  factory TableEncryptionSpecification.fromMap(Map<String, dynamic> map) {
    return TableEncryptionSpecification(
      kmsKeyIdentifier: (() { final guardedValue = map['kmsKeyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

