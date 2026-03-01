/// Type of the image. Possible values are: docker - For docker images. azureml - For AzureML images
enum ImageType {
  valueDocker("docker"),
  valueAzureml("azureml");

  const ImageType(this.value);
  final String value;

  static ImageType fromValue(String value) {
    for (final item in ImageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageType value: $value');
  }
}

