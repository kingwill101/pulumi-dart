/// [Required] Docker specification must be either Build or Image
enum DockerSpecificationType {
  valueBuild("Build"),
  valueImage("Image");

  const DockerSpecificationType(this.value);
  final String value;

  static DockerSpecificationType fromValue(String value) {
    for (final item in DockerSpecificationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DockerSpecificationType value: $value');
  }
}

