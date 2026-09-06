import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
enum SseKmsEncryptedObjectsStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const SseKmsEncryptedObjectsStatus(this.wireValue);
  @override
  final String wireValue;

  static SseKmsEncryptedObjectsStatus fromValue(String value) {
    for (final item in SseKmsEncryptedObjectsStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SseKmsEncryptedObjectsStatus value: $value');
  }
}
