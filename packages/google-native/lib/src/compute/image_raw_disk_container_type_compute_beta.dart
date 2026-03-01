/// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
enum ImageRawDiskContainerTypeComputeBeta {
  tar("TAR");

  const ImageRawDiskContainerTypeComputeBeta(this.value);
  final String value;

  static ImageRawDiskContainerTypeComputeBeta fromValue(String value) {
    for (final item in ImageRawDiskContainerTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ImageRawDiskContainerTypeComputeBeta value: $value',
    );
  }
}
