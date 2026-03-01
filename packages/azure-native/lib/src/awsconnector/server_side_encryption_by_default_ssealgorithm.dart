/// Server-side encryption algorithm to use for the default encryption.
enum ServerSideEncryptionByDefaultSSEAlgorithm {
  aES256("AES256"),
  awsKms("aws:kms"),
  awsKmsDsse("aws:kms:dsse");

  const ServerSideEncryptionByDefaultSSEAlgorithm(this.value);
  final String value;

  static ServerSideEncryptionByDefaultSSEAlgorithm fromValue(String value) {
    for (final item in ServerSideEncryptionByDefaultSSEAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerSideEncryptionByDefaultSSEAlgorithm value: $value');
  }
}

