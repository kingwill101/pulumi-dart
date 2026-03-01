/// The scope where this blueprint definition can be assigned.
enum BlueprintTargetScope {
  valueSubscription("subscription"),
  valueManagementGroup("managementGroup");

  const BlueprintTargetScope(this.value);
  final String value;

  static BlueprintTargetScope fromValue(String value) {
    for (final item in BlueprintTargetScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlueprintTargetScope value: $value');
  }
}

