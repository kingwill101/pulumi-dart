/// The kind of the resource.
enum KnownDataCollectionRuleResourceKind {
  valueLinux("Linux"),
  valueWindows("Windows");

  const KnownDataCollectionRuleResourceKind(this.wireValue);
  final String wireValue;

  static KnownDataCollectionRuleResourceKind fromValue(String value) {
    for (final item in KnownDataCollectionRuleResourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownDataCollectionRuleResourceKind value: $value');
  }
}
