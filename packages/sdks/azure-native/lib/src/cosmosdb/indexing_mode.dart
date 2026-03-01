/// Indicates the indexing mode.
enum IndexingMode {
  valueConsistent("consistent"),
  valueLazy("lazy"),
  valueNone("none");

  const IndexingMode(this.value);
  final String value;

  static IndexingMode fromValue(String value) {
    for (final item in IndexingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexingMode value: $value');
  }
}

