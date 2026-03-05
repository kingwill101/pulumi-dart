/// The scope where this blueprint definition can be assigned.
enum BlueprintTargetScope {
  valueSubscription("subscription"),
  valueManagementGroup("managementGroup");

  const BlueprintTargetScope(this.wireValue);
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

