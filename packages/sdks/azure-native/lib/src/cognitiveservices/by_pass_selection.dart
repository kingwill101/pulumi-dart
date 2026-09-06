import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting for trusted services.
enum ByPassSelection implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueAzureServices("AzureServices");

  const ByPassSelection(this.wireValue);
  @override
  final String wireValue;

  static ByPassSelection fromValue(String value) {
    for (final item in ByPassSelection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ByPassSelection value: $value');
  }
}
