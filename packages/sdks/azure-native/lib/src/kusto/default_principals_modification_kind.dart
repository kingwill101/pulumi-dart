/// The default principals modification kind
enum DefaultPrincipalsModificationKind {
  valueUnion("Union"),
  valueReplace("Replace"),
  valueNone("None");

  const DefaultPrincipalsModificationKind(this.wireValue);
  final String wireValue;

  static DefaultPrincipalsModificationKind fromValue(String value) {
    for (final item in DefaultPrincipalsModificationKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultPrincipalsModificationKind value: $value');
  }
}
