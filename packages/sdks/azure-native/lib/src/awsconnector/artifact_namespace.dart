import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ArtifactNamespace implements pulumi.PulumiEnum<String> {
  bUILDID("BUILD_ID"),
  nONE("NONE");

  const ArtifactNamespace(this.wireValue);
  @override
  final String wireValue;

  static ArtifactNamespace fromValue(String value) {
    for (final item in ArtifactNamespace.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactNamespace value: $value');
  }
}
