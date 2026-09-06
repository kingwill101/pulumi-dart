import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector Type
enum ConnectorType implements pulumi.PulumiEnum<String> {
  sINK("SINK"),
  sOURCE("SOURCE");

  const ConnectorType(this.wireValue);
  @override
  final String wireValue;

  static ConnectorType fromValue(String value) {
    for (final item in ConnectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorType value: $value');
  }
}
