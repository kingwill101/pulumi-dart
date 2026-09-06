import 'package:pulumi/pulumi.dart' as pulumi;

/// The format of the key pair. Default: ``pem``
enum KeyFormat implements pulumi.PulumiEnum<String> {
  pem("pem"),
  ppk("ppk");

  const KeyFormat(this.wireValue);
  @override
  final String wireValue;

  static KeyFormat fromValue(String value) {
    for (final item in KeyFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyFormat value: $value');
  }
}
