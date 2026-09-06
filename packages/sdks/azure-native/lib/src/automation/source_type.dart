import 'package:pulumi/pulumi.dart' as pulumi;

/// The source type. Must be one of VsoGit, VsoTfvc, GitHub, case sensitive.
enum SourceType implements pulumi.PulumiEnum<String> {
  vsoGit("VsoGit"),
  vsoTfvc("VsoTfvc"),
  gitHub("GitHub");

  const SourceType(this.wireValue);
  @override
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
