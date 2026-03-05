/// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
enum EventSubscriptionIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const EventSubscriptionIdentityType(this.wireValue);
  final String wireValue;

  static EventSubscriptionIdentityType fromValue(String value) {
    for (final item in EventSubscriptionIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSubscriptionIdentityType value: $value');
  }
}

