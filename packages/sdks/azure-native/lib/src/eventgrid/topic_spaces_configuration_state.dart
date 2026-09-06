import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicate if Topic Spaces Configuration is enabled for the namespace. Default is Disabled.
enum TopicSpacesConfigurationState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TopicSpacesConfigurationState(this.wireValue);
  @override
  final String wireValue;

  static TopicSpacesConfigurationState fromValue(String value) {
    for (final item in TopicSpacesConfigurationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TopicSpacesConfigurationState value: $value');
  }
}
