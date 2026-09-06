import 'package:pulumi/pulumi.dart' as pulumi;

/// The scope where this blueprint definition can be assigned.
enum BlueprintTargetScope implements pulumi.PulumiEnum<String> {
  valueSubscription("subscription"),
  valueManagementGroup("managementGroup");

  const BlueprintTargetScope(this.wireValue);
  @override
  final String wireValue;

  static BlueprintTargetScope fromValue(String value) {
    for (final item in BlueprintTargetScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlueprintTargetScope value: $value');
  }
}
