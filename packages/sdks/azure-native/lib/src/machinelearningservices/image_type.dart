/// Type of the image. Possible values are: docker - For docker images. azureml - For AzureML images
enum ImageType {
  valueDocker("docker"),
  valueAzureml("azureml");

  const ImageType(this.wireValue);
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

