/// The type of the image. Set to CloudBuild to let the system manages the image, where user will not be able to update image through image field. Set to ContainerImage for user provided image.
enum ImageType {
  valueCloudBuild("CloudBuild"),
  valueContainerImage("ContainerImage");

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

