import 'package:pulumi/pulumi.dart' as pulumi;

/// Impact of the entity in health state propagation
enum EntityImpact implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  limited("Limited"),
  suppressed("Suppressed");

  const EntityImpact(this.wireValue);
  @override
  final String wireValue;

  static EntityImpact fromValue(String value) {
    for (final item in EntityImpact.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityImpact value: $value');
  }
}
