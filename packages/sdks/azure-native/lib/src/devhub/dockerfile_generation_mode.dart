/// The mode of generation to be used for generating Dockerfiles.
enum DockerfileGenerationMode {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const DockerfileGenerationMode(this.wireValue);
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
