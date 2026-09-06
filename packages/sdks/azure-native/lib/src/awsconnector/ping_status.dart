import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum PingStatus implements pulumi.PulumiEnum<String> {
  connectionLost("ConnectionLost"),
  inactive("Inactive"),
  online("Online");

  const PingStatus(this.wireValue);
  @override
  final String wireValue;

  static PingStatus fromValue(String value) {
    for (final item in PingStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PingStatus value: $value');
  }
}
