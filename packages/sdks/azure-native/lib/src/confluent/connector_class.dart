import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector Class
enum ConnectorClass implements pulumi.PulumiEnum<String> {
  aZUREBLOBSOURCE("AZUREBLOBSOURCE"),
  aZUREBLOBSINK("AZUREBLOBSINK");

  const ConnectorClass(this.wireValue);
  @override
  final String wireValue;

  static ConnectorClass fromValue(String value) {
    for (final item in ConnectorClass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorClass value: $value');
  }
}
