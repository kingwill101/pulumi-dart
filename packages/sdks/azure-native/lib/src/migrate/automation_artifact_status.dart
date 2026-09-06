import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the status of automation artifacts.
enum AutomationArtifactStatus implements pulumi.PulumiEnum<String> {
  valueNotGenerated("NotGenerated"),
  valueGenerated("Generated");

  const AutomationArtifactStatus(this.wireValue);
  @override
  final String wireValue;

  static AutomationArtifactStatus fromValue(String value) {
    for (final item in AutomationArtifactStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationArtifactStatus value: $value');
  }
}
