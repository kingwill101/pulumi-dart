/// The alias kind.
enum AliasContextKindContaineranalysisV1beta1 {
  kindUnspecified("KIND_UNSPECIFIED"),
  fixed("FIXED"),
  movable("MOVABLE"),
  other("OTHER");

  const AliasContextKindContaineranalysisV1beta1(this.value);
  final String value;

  static AliasContextKindContaineranalysisV1beta1 fromValue(String value) {
    for (final item in AliasContextKindContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AliasContextKindContaineranalysisV1beta1 value: $value');
  }
}

