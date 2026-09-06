import 'package:pulumi/pulumi.dart' as pulumi;

/// The write behavior for the operation. Default is Insert.
enum SalesforceV2SinkWriteBehavior implements pulumi.PulumiEnum<String> {
  insert("Insert"),
  upsert("Upsert");

  const SalesforceV2SinkWriteBehavior(this.wireValue);
  @override
  final String wireValue;

  static SalesforceV2SinkWriteBehavior fromValue(String value) {
    for (final item in SalesforceV2SinkWriteBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SalesforceV2SinkWriteBehavior value: $value');
  }
}
