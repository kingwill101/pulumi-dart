import 'package:pulumi/pulumi.dart' as pulumi;

/// The action of IP ACL rule.
enum Action implements pulumi.PulumiEnum<String> {
  valueAllow("Allow");

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
