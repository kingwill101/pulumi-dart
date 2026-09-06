import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of time series connection resource.
enum ConnectionType implements pulumi.PulumiEnum<String> {
  valueAzureDataExplorer("AzureDataExplorer");

  const ConnectionType(this.wireValue);
  @override
  final String wireValue;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}
