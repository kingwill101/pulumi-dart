import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Indicates whether MLAssist feature is enabled.
enum MLAssistConfigurationType implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MLAssistConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static MLAssistConfigurationType fromValue(String value) {
    for (final item in MLAssistConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MLAssistConfigurationType value: $value');
  }
}
