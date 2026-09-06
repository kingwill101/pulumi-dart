import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
enum EnabledState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const EnabledState(this.wireValue);
  @override
  final String wireValue;

  static EnabledState fromValue(String value) {
    for (final item in EnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnabledState value: $value');
  }
}
