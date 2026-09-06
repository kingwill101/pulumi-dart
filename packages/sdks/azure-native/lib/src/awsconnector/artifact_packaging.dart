import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ArtifactPackaging implements pulumi.PulumiEnum<String> {
  nONE("NONE"),
  zIP("ZIP");

  const ArtifactPackaging(this.wireValue);
  @override
  final String wireValue;

  static ArtifactPackaging fromValue(String value) {
    for (final item in ArtifactPackaging.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactPackaging value: $value');
  }
}
