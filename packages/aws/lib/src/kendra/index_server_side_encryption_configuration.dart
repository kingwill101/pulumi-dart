// ignore_for_file: unused_element, unnecessary_cast


class IndexServerSideEncryptionConfiguration {
  /// The identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  final String? kmsKeyId;

  /// Creates a new [IndexServerSideEncryptionConfiguration].
  /// [kmsKeyId] The identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  IndexServerSideEncryptionConfiguration({
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory IndexServerSideEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return IndexServerSideEncryptionConfiguration(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}

