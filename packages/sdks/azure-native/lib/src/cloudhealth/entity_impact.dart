/// Impact of the entity in health state propagation
enum EntityImpact {
  standard("Standard"),
  limited("Limited"),
  suppressed("Suppressed");

  const EntityImpact(this.wireValue);
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
