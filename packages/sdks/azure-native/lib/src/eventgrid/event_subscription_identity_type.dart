/// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
enum EventSubscriptionIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const EventSubscriptionIdentityType(this.value);
  final String value;

  static EventSubscriptionIdentityType fromValue(String value) {
    for (final item in EventSubscriptionIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSubscriptionIdentityType value: $value');
  }
}

