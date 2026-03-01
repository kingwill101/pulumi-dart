/// The Azure scope to which the license will apply.
enum ScopeType {
  valueTenant("Tenant"),
  valueSubscription("Subscription"),
  valueResourceGroup("ResourceGroup");

  const ScopeType(this.value);
  final String value;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}

