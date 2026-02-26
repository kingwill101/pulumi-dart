/// Indicates whether the entity type can be automatically expanded.
enum EntityTypeAutoExpansionMode4 {
  autoExpansionModeUnspecified("AUTO_EXPANSION_MODE_UNSPECIFIED"),
  autoExpansionModeDefault("AUTO_EXPANSION_MODE_DEFAULT");

  const EntityTypeAutoExpansionMode4(this.value);
  final String value;

  static EntityTypeAutoExpansionMode4 fromValue(String value) {
    for (final item in EntityTypeAutoExpansionMode4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeAutoExpansionMode4 value: $value');
  }
}
