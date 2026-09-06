import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the ReconciliationPolicy
enum ReconciliationState implements pulumi.PulumiEnum<String> {
  inactive("inactive"),
  active("active");

  const ReconciliationState(this.wireValue);
  @override
  final String wireValue;

  static ReconciliationState fromValue(String value) {
    for (final item in ReconciliationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReconciliationState value: $value');
  }
}
