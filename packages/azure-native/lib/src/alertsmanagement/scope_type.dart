/// type of target scope
enum ScopeType {
  valueResourceGroup("ResourceGroup"),
  valueResource("Resource"),
  valueSubscription("Subscription");

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

