/// Gets or sets the status of automation artifacts.
enum AutomationArtifactStatus {
  valueNotGenerated("NotGenerated"),
  valueGenerated("Generated");

  const AutomationArtifactStatus(this.wireValue);
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

