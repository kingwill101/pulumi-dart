import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of source control service.
enum SourceControlType implements pulumi.PulumiEnum<String> {
  valueGithub("Github"),
  valueVisualStudioTeamService("VisualStudioTeamService");

  const SourceControlType(this.wireValue);
  @override
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
