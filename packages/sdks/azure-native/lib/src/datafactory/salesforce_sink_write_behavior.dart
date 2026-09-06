import 'package:pulumi/pulumi.dart' as pulumi;

/// The write behavior for the operation. Default is Insert.
enum SalesforceSinkWriteBehavior implements pulumi.PulumiEnum<String> {
  insert("Insert"),
  upsert("Upsert");

  const SalesforceSinkWriteBehavior(this.wireValue);
  @override
  final String wireValue;

  static SalesforceSinkWriteBehavior fromValue(String value) {
    for (final item in SalesforceSinkWriteBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SalesforceSinkWriteBehavior value: $value');
  }
}
