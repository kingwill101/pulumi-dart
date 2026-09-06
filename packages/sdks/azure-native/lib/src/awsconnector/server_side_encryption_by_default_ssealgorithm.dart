import 'package:pulumi/pulumi.dart' as pulumi;

/// Server-side encryption algorithm to use for the default encryption.
enum ServerSideEncryptionByDefaultSSEAlgorithm implements pulumi.PulumiEnum<String> {
  aES256("AES256"),
  awsKms("aws:kms"),
  awsKmsDsse("aws:kms:dsse");

  const ServerSideEncryptionByDefaultSSEAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static ServerSideEncryptionByDefaultSSEAlgorithm fromValue(String value) {
    for (final item in ServerSideEncryptionByDefaultSSEAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerSideEncryptionByDefaultSSEAlgorithm value: $value');
  }
}
