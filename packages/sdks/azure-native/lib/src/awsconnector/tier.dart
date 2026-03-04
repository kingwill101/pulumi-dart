/// The parameter tier.
enum Tier {
  advanced("Advanced"),
  intelligentTiering("Intelligent-Tiering"),
  standard("Standard");

  const Tier(this.wireValue);
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
