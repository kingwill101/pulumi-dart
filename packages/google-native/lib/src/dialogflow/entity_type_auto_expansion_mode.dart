/// Optional. Indicates whether the entity type can be automatically expanded.
enum EntityTypeAutoExpansionMode {
  autoExpansionModeUnspecified("AUTO_EXPANSION_MODE_UNSPECIFIED"),
  autoExpansionModeDefault("AUTO_EXPANSION_MODE_DEFAULT");

  const EntityTypeAutoExpansionMode(this.value);
  final String value;

  static EntityTypeAutoExpansionMode fromValue(String value) {
    for (final item in EntityTypeAutoExpansionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeAutoExpansionMode value: $value');
  }
}
