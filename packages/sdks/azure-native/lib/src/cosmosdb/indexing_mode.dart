import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the indexing mode.
enum IndexingMode implements pulumi.PulumiEnum<String> {
  valueConsistent("consistent"),
  valueLazy("lazy"),
  valueNone("none");

  const IndexingMode(this.wireValue);
  @override
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
