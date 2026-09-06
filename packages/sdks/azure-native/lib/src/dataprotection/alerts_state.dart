import 'package:pulumi/pulumi.dart' as pulumi;

enum AlertsState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AlertsState(this.wireValue);
  @override
  final String wireValue;

  static AlertsState fromValue(String value) {
    for (final item in AlertsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertsState value: $value');
  }
}
