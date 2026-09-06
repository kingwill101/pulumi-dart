import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of generation to be used for generating Dockerfiles.
enum DockerfileGenerationMode implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const DockerfileGenerationMode(this.wireValue);
  @override
  final String wireValue;

  static DockerfileGenerationMode fromValue(String value) {
    for (final item in DockerfileGenerationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DockerfileGenerationMode value: $value');
  }
}
