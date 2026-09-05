// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexServerSideEncryptionConfiguration {
  /// The identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  final pulumi.Input<String?>? kmsKeyId;

  /// Creates a new [IndexServerSideEncryptionConfiguration].
  /// [kmsKeyId] The identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  const IndexServerSideEncryptionConfiguration({
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory IndexServerSideEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return IndexServerSideEncryptionConfiguration(
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
