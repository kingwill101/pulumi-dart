/// Gets or sets the status of automation artifacts.
enum AutomationArtifactStatus {
  valueNotGenerated("NotGenerated"),
  valueGenerated("Generated");

  const AutomationArtifactStatus(this.value);
  final String value;

  static AutomationArtifactStatus fromValue(String value) {
    for (final item in AutomationArtifactStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationArtifactStatus value: $value');
  }
}

