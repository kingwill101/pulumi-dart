/// the entity query kind
enum CustomEntityQueryKind {
  valueActivity("Activity");

  const CustomEntityQueryKind(this.value);
  final String value;

  static CustomEntityQueryKind fromValue(String value) {
    for (final item in CustomEntityQueryKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomEntityQueryKind value: $value');
  }
}

