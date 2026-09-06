import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan accessibility
enum Accessibility implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valuePublic("Public"),
  valuePrivateTenantOnLevel("PrivateTenantOnLevel"),
  valuePrivateSubscriptionOnLevel("PrivateSubscriptionOnLevel");

  const Accessibility(this.wireValue);
  @override
  final String wireValue;

  static Accessibility fromValue(String value) {
    for (final item in Accessibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Accessibility value: $value');
  }
}
