import 'package:pulumi/pulumi.dart' as pulumi;

/// Property direction
enum HeaderDirection implements pulumi.PulumiEnum<String> {
  aNY("ANY"),
  fORWARD("FORWARD");

  const HeaderDirection(this.wireValue);
  @override
  final String wireValue;

  static HeaderDirection fromValue(String value) {
    for (final item in HeaderDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderDirection value: $value');
  }
}
