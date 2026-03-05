/// The type of source control service.
enum SourceControlType {
  valueGithub("Github"),
  valueVisualStudioTeamService("VisualStudioTeamService");

  const SourceControlType(this.wireValue);
  final String wireValue;

  static SourceControlType fromValue(String value) {
    for (final item in SourceControlType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceControlType value: $value');
  }
}

