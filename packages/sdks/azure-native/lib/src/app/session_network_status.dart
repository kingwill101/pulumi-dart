import 'package:pulumi/pulumi.dart' as pulumi;

/// Network status for the sessions.
enum SessionNetworkStatus implements pulumi.PulumiEnum<String> {
  valueEgressEnabled("EgressEnabled"),
  valueEgressDisabled("EgressDisabled");

  const SessionNetworkStatus(this.wireValue);
  @override
  final String wireValue;

  static SessionNetworkStatus fromValue(String value) {
    for (final item in SessionNetworkStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionNetworkStatus value: $value');
  }
}
