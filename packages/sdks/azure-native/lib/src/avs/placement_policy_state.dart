import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the placement policy is enabled or disabled
enum PlacementPolicyState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const PlacementPolicyState(this.wireValue);
  @override
  final String wireValue;

  static PlacementPolicyState fromValue(String value) {
    for (final item in PlacementPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementPolicyState value: $value');
  }
}
