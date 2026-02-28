/// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
enum ImageRawDiskContainerTypeComputeV1 {
  tar("TAR");

  const ImageRawDiskContainerTypeComputeV1(this.value);
  final String value;

  static ImageRawDiskContainerTypeComputeV1 fromValue(String value) {
    for (final item in ImageRawDiskContainerTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageRawDiskContainerTypeComputeV1 value: $value');
  }
}

