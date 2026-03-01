/// The type of source control service.
enum SourceControlType {
  valueGithub("Github"),
  valueVisualStudioTeamService("VisualStudioTeamService");

  const SourceControlType(this.value);
  final String value;

  static SourceControlType fromValue(String value) {
    for (final item in SourceControlType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceControlType value: $value');
  }
}

