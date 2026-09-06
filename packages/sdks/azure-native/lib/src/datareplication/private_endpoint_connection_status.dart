import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the status.
enum PrivateEndpointConnectionStatus implements pulumi.PulumiEnum<String> {
  approved("Approved"),
  disconnected("Disconnected"),
  pending("Pending"),
  rejected("Rejected");

  const PrivateEndpointConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static PrivateEndpointConnectionStatus fromValue(String value) {
    for (final item in PrivateEndpointConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointConnectionStatus value: $value');
  }
}
