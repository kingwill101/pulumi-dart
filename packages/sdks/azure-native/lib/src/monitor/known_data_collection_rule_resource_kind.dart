/// The kind of the resource.
enum KnownDataCollectionRuleResourceKind {
  valueLinux("Linux"),
  valueWindows("Windows");

  const KnownDataCollectionRuleResourceKind(this.value);
  final String value;

  static KnownDataCollectionRuleResourceKind fromValue(String value) {
    for (final item in KnownDataCollectionRuleResourceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownDataCollectionRuleResourceKind value: $value');
  }
}

