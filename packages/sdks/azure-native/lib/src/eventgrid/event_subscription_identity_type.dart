import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
enum EventSubscriptionIdentityType implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const EventSubscriptionIdentityType(this.wireValue);
  @override
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
