import 'package:pulumi/pulumi.dart' as pulumi;

/// Connectivity topology type.
enum ConnectivityTopology implements pulumi.PulumiEnum<String> {
  valueHubAndSpoke("HubAndSpoke"),
  valueMesh("Mesh");

  const ConnectivityTopology(this.wireValue);
  @override
  final String wireValue;

  static ConnectivityTopology fromValue(String value) {
    for (final item in ConnectivityTopology.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectivityTopology value: $value');
  }
}
