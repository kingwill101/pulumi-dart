import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameter tier.
enum Tier implements pulumi.PulumiEnum<String> {
  advanced("Advanced"),
  intelligentTiering("Intelligent-Tiering"),
  standard("Standard");

  const Tier(this.wireValue);
  @override
  final String wireValue;

  static Tier fromValue(String value) {
    for (final item in Tier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Tier value: $value');
  }
}
