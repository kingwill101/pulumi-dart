/// Type of transform.
enum TransformSummaryKind {
  unknownKind("UNKNOWN_KIND"),
  parDoKind("PAR_DO_KIND"),
  groupByKeyKind("GROUP_BY_KEY_KIND"),
  flattenKind("FLATTEN_KIND"),
  readKind("READ_KIND"),
  writeKind("WRITE_KIND"),
  constantKind("CONSTANT_KIND"),
  singletonKind("SINGLETON_KIND"),
  shuffleKind("SHUFFLE_KIND");

  const TransformSummaryKind(this.value);
  final String value;

  static TransformSummaryKind fromValue(String value) {
    for (final item in TransformSummaryKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformSummaryKind value: $value');
  }
}
