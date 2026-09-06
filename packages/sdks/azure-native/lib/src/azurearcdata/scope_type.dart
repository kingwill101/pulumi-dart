import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure scope to which the license will apply.
enum ScopeType implements pulumi.PulumiEnum<String> {
  valueTenant("Tenant"),
  valueSubscription("Subscription"),
  valueResourceGroup("ResourceGroup");

  const ScopeType(this.wireValue);
  @override
  final String wireValue;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}
