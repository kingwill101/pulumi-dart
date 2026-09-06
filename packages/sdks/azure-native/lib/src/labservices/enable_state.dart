import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether a VM will get shutdown when it hasn't been connected to after a period of time.
enum EnableState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableState(this.wireValue);
  @override
  final String wireValue;

  static EnableState fromValue(String value) {
    for (final item in EnableState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableState value: $value');
  }
}
