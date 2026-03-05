/// Indicates the indexing mode.
enum IndexingMode {
  valueConsistent("consistent"),
  valueLazy("lazy"),
  valueNone("none");

  const IndexingMode(this.wireValue);
  final String wireValue;

  static IndexingMode fromValue(String value) {
    for (final item in IndexingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexingMode value: $value');
  }
}

