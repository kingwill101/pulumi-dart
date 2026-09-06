import 'package:pulumi/pulumi.dart' as pulumi;

/// mysql version support status.
enum SupportStatus implements pulumi.PulumiEnum<String> {
  valueOutOfSupport("OutOfSupport"),
  valueExtended("Extended"),
  valueMainstream("Mainstream");

  const SupportStatus(this.wireValue);
  @override
  final String wireValue;

  static SupportStatus fromValue(String value) {
    for (final item in SupportStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportStatus value: $value');
  }
}
