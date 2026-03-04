/// The source type. Must be one of VsoGit, VsoTfvc, GitHub, case sensitive.
enum SourceType {
  valueVsoGit("VsoGit"),
  valueVsoTfvc("VsoTfvc"),
  valueGitHub("GitHub");

  const SourceType(this.wireValue);
  final String wireValue;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}
