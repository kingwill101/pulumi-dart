import 'package:pulumi/pulumi.dart' as pulumi;

/// State of the plugin
enum DevToolPortalFeatureState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DevToolPortalFeatureState(this.wireValue);
  @override
  final String wireValue;

  static DevToolPortalFeatureState fromValue(String value) {
    for (final item in DevToolPortalFeatureState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevToolPortalFeatureState value: $value');
  }
}
