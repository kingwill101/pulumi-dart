import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector status
enum ConnectorStatus implements pulumi.PulumiEnum<String> {
  valueActive("active"),
  valueError("error"),
  valueSuspended("suspended");

  const ConnectorStatus(this.wireValue);
  @override
  final String wireValue;

  static ConnectorStatus fromValue(String value) {
    for (final item in ConnectorStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorStatus value: $value');
  }
}
