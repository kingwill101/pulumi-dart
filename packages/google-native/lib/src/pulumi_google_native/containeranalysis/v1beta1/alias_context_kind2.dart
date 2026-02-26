/// The alias kind.
enum AliasContextKind2 {
  kindUnspecified("KIND_UNSPECIFIED"),
  fixed("FIXED"),
  movable("MOVABLE"),
  other("OTHER");

  const AliasContextKind2(this.value);
  final String value;

  static AliasContextKind2 fromValue(String value) {
    for (final item in AliasContextKind2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AliasContextKind2 value: $value');
  }
}
