/// The encryption type to use. If you use the ``KMS`` encryption type, the contents of the repository will be encrypted using server-side encryption with KMSlong key stored in KMS. When you use KMS to encrypt your data, you can either use the default AWS managed KMS key for Amazon ECR, or specify your own KMS key, which you already created. For more information, see [Protecting data using server-side encryption with an key stored in (SSE-KMS)](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html) in the *Amazon Simple Storage Service Console Developer Guide*. If you use the ``AES256`` encryption type, Amazon ECR uses server-side encryption with Amazon S3-managed encryption keys which encrypts the images in the repository using an AES-256 encryption algorithm. For more information, see [Protecting data using server-side encryption with Amazon S3-managed encryption keys (SSE-S3)](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html) in the *Ama The encryption type to use.
enum EncryptionConfigurationEncryptionType {
  aES256("AES256"),
  kMS("KMS");

  const EncryptionConfigurationEncryptionType(this.wireValue);
  final String wireValue;

  static EncryptionConfigurationEncryptionType fromValue(String value) {
    for (final item in EncryptionConfigurationEncryptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EncryptionConfigurationEncryptionType value: $value',
    );
  }
}
