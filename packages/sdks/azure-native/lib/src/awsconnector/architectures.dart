import 'package:pulumi/pulumi.dart' as pulumi;

/// Architectures enum
enum Architectures implements pulumi.PulumiEnum<String> {
  arm64("arm64"),
  x8664("x86_64");

  const Architectures(this.wireValue);
  @override
  final String wireValue;

  static Architectures fromValue(String value) {
    for (final item in Architectures.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Architectures value: $value');
  }
}
