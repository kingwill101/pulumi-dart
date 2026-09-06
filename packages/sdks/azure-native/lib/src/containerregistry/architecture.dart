import 'package:pulumi/pulumi.dart' as pulumi;

/// The OS architecture.
enum Architecture implements pulumi.PulumiEnum<String> {
  valueAmd64("amd64"),
  valueX86("x86"),
  value386("386"),
  valueArm("arm"),
  valueArm64("arm64");

  const Architecture(this.wireValue);
  @override
  final String wireValue;

  static Architecture fromValue(String value) {
    for (final item in Architecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Architecture value: $value');
  }
}
