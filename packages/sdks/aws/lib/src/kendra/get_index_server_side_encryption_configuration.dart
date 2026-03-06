// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexServerSideEncryptionConfiguration {
  /// Identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [GetIndexServerSideEncryptionConfiguration].
  /// [kmsKeyId] Identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  const GetIndexServerSideEncryptionConfiguration({
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': kmsKeyId,
    };
  }

  factory GetIndexServerSideEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetIndexServerSideEncryptionConfiguration(
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}

