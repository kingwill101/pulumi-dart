import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the transitHub.
enum TransitHubState implements pulumi.PulumiEnum<String> {
  pendingApproval("PendingApproval"),
  approved("Approved"),
  pendingUpdate("PendingUpdate"),
  active("Active"),
  failed("Failed");

  const TransitHubState(this.wireValue);
  @override
  final String wireValue;

  static TransitHubState fromValue(String value) {
    for (final item in TransitHubState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransitHubState value: $value');
  }
}
