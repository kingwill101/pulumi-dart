/// The format used to encode and transmit the block device, which should be TAR. This is just a container and transmission format and not a runtime format. Provided by the client when the disk image is created.
enum ImageRawDiskContainerType3 {
  tar("TAR");

  const ImageRawDiskContainerType3(this.value);
  final String value;

  static ImageRawDiskContainerType3 fromValue(String value) {
    for (final item in ImageRawDiskContainerType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageRawDiskContainerType3 value: $value');
  }
}
