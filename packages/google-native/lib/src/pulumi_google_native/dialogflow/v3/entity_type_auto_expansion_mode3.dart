/// Indicates whether the entity type can be automatically expanded.
enum EntityTypeAutoExpansionMode3 {
  autoExpansionModeUnspecified("AUTO_EXPANSION_MODE_UNSPECIFIED"),
  autoExpansionModeDefault("AUTO_EXPANSION_MODE_DEFAULT");

  const EntityTypeAutoExpansionMode3(this.value);
  final String value;

  static EntityTypeAutoExpansionMode3 fromValue(String value) {
    for (final item in EntityTypeAutoExpansionMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeAutoExpansionMode3 value: $value');
  }
}
