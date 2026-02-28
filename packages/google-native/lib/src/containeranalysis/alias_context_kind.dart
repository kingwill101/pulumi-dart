/// The alias kind.
enum AliasContextKind {
  kindUnspecified("KIND_UNSPECIFIED"),
  fixed("FIXED"),
  movable("MOVABLE"),
  other("OTHER");

  const AliasContextKind(this.value);
  final String value;

  static AliasContextKind fromValue(String value) {
    for (final item in AliasContextKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AliasContextKind value: $value');
  }
}

