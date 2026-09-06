import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the secondary replica should allow all connections, no connections, or only ReadOnly connections.
enum SecondaryAllowConnections implements pulumi.PulumiEnum<String> {
  valueNO("NO"),
  valueALL("ALL"),
  valueREADONLY("READ_ONLY");

  const SecondaryAllowConnections(this.wireValue);
  @override
  final String wireValue;

  static SecondaryAllowConnections fromValue(String value) {
    for (final item in SecondaryAllowConnections.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecondaryAllowConnections value: $value');
  }
}
