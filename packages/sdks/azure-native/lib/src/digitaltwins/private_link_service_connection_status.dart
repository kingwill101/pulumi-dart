import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of a private endpoint connection.
enum PrivateLinkServiceConnectionStatus implements pulumi.PulumiEnum<String> {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PrivateLinkServiceConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static PrivateLinkServiceConnectionStatus fromValue(String value) {
    for (final item in PrivateLinkServiceConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceConnectionStatus value: $value');
  }
}
