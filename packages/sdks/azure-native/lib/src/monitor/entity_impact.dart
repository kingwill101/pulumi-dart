/// Impact of the entity in health state propagation
enum EntityImpact {
  standard("Standard"),
  limited("Limited"),
  suppressed("Suppressed");

  const EntityImpact(this.value);
  final String value;

  static EntityImpact fromValue(String value) {
    for (final item in EntityImpact.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityImpact value: $value');
  }
}

