/// Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
enum SseKmsEncryptedObjectsStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const SseKmsEncryptedObjectsStatus(this.value);
  final String value;

  static SseKmsEncryptedObjectsStatus fromValue(String value) {
    for (final item in SseKmsEncryptedObjectsStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SseKmsEncryptedObjectsStatus value: $value');
  }
}

