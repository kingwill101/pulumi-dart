/// Optional. Indicates whether the entity type can be automatically expanded.
enum EntityTypeAutoExpansionMode2 {
  autoExpansionModeUnspecified("AUTO_EXPANSION_MODE_UNSPECIFIED"),
  autoExpansionModeDefault("AUTO_EXPANSION_MODE_DEFAULT");

  const EntityTypeAutoExpansionMode2(this.value);
  final String value;

  static EntityTypeAutoExpansionMode2 fromValue(String value) {
    for (final item in EntityTypeAutoExpansionMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeAutoExpansionMode2 value: $value');
  }
}
