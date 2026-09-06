import 'package:pulumi/pulumi.dart' as pulumi;

/// Property which describes the state of private link on a connected cluster resource.
enum PrivateLinkState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PrivateLinkState(this.wireValue);
  @override
  final String wireValue;

  static PrivateLinkState fromValue(String value) {
    for (final item in PrivateLinkState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkState value: $value');
  }
}
