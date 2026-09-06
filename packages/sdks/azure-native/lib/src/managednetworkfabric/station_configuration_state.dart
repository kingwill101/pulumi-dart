import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabling a station. Either True/False.
enum StationConfigurationState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const StationConfigurationState(this.wireValue);
  @override
  final String wireValue;

  static StationConfigurationState fromValue(String value) {
    for (final item in StationConfigurationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StationConfigurationState value: $value');
  }
}
