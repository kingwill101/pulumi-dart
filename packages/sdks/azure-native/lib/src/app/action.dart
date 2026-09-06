import 'package:pulumi/pulumi.dart' as pulumi;

/// Allow or Deny rules to determine for incoming IP. Note: Rules can only consist of ALL Allow or ALL Deny
enum Action implements pulumi.PulumiEnum<String> {
  valueAllow("Allow"),
  valueDeny("Deny");

  const Action(this.wireValue);
  @override
  final String wireValue;

  static Action fromValue(String value) {
    for (final item in Action.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Action value: $value');
  }
}
