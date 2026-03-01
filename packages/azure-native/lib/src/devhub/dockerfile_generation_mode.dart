/// The mode of generation to be used for generating Dockerfiles.
enum DockerfileGenerationMode {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const DockerfileGenerationMode(this.value);
  final String value;

  static DockerfileGenerationMode fromValue(String value) {
    for (final item in DockerfileGenerationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DockerfileGenerationMode value: $value');
  }
}

