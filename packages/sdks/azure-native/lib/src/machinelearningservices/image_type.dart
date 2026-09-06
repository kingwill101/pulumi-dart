import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the image. Possible values are: docker - For docker images. azureml - For AzureML Environment images (custom and curated)
enum ImageType implements pulumi.PulumiEnum<String> {
  docker("docker"),
  azureml("azureml");

  const ImageType(this.wireValue);
  @override
  final String wireValue;

  static ImageType fromValue(String value) {
    for (final item in ImageType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageType value: $value');
  }
}
