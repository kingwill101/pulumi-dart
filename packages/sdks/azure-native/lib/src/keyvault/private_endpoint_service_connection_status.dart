import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the connection has been approved, rejected or removed by the key vault owner.
enum PrivateEndpointServiceConnectionStatus implements pulumi.PulumiEnum<String> {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PrivateEndpointServiceConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static PrivateEndpointServiceConnectionStatus fromValue(String value) {
    for (final item in PrivateEndpointServiceConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointServiceConnectionStatus value: $value');
  }
}
