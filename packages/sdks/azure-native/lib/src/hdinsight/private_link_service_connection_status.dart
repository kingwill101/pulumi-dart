import 'package:pulumi/pulumi.dart' as pulumi;

/// The concrete private link service connection.
enum PrivateLinkServiceConnectionStatus implements pulumi.PulumiEnum<String> {
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valuePending("Pending"),
  valueRemoved("Removed");

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
