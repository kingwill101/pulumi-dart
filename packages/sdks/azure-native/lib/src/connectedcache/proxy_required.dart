import 'package:pulumi/pulumi.dart' as pulumi;

/// Cache node resource requires a proxy
enum ProxyRequired implements pulumi.PulumiEnum<String> {
  none("None"),
  required("Required");

  const ProxyRequired(this.wireValue);
  @override
  final String wireValue;

  static ProxyRequired fromValue(String value) {
    for (final item in ProxyRequired.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProxyRequired value: $value');
  }
}
