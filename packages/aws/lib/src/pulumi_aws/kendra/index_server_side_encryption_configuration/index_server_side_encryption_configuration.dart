// ignore_for_file: unused_element, unnecessary_cast

class IndexServerSideEncryptionConfiguration {
  /// The identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  final String? kmsKeyId;

  IndexServerSideEncryptionConfiguration({
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    return map;
  }

  factory IndexServerSideEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IndexServerSideEncryptionConfiguration(
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}
