/// The source type. Must be one of VsoGit, VsoTfvc, GitHub, case sensitive.
enum SourceType {
  valueVsoGit("VsoGit"),
  valueVsoTfvc("VsoTfvc"),
  valueGitHub("GitHub");

  const SourceType(this.value);
  final String value;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}

