/// The default principals modification kind
enum DefaultPrincipalsModificationKind {
  valueUnion("Union"),
  valueReplace("Replace"),
  valueNone("None");

  const DefaultPrincipalsModificationKind(this.value);
  final String value;

  static DefaultPrincipalsModificationKind fromValue(String value) {
    for (final item in DefaultPrincipalsModificationKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultPrincipalsModificationKind value: $value');
  }
}

