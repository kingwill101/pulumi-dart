// ignore_for_file: unused_element, unnecessary_cast

class GetIndexServerSideEncryptionConfiguration {
  /// Identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  final String kmsKeyId;

  /// Creates a new [GetIndexServerSideEncryptionConfiguration].
  /// [kmsKeyId] Identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.
  GetIndexServerSideEncryptionConfiguration({
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyId'] = kmsKeyId;
    return map;
  }

  factory GetIndexServerSideEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetIndexServerSideEncryptionConfiguration(
      kmsKeyId: map['kmsKeyId'] as String,
    );
  }
}
