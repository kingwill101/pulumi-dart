import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of key pair. Note that ED25519 keys are not supported for Windows instances. If the ``PublicKeyMaterial`` property is specified, the ``KeyType`` property is ignored, and the key type is inferred from the ``PublicKeyMaterial`` value. Default: ``rsa``
enum KeyType implements pulumi.PulumiEnum<String> {
  ed25519("ed25519"),
  rsa("rsa");

  const KeyType(this.wireValue);
  @override
  final String wireValue;

  static KeyType fromValue(String value) {
    for (final item in KeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyType value: $value');
  }
}
