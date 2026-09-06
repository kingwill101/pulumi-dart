import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Docker specification must be either Build or Image
enum DockerSpecificationType implements pulumi.PulumiEnum<String> {
  valueBuild("Build"),
  valueImage("Image");

  const DockerSpecificationType(this.wireValue);
  @override
  final String wireValue;

  static DockerSpecificationType fromValue(String value) {
    for (final item in DockerSpecificationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DockerSpecificationType value: $value');
  }
}
