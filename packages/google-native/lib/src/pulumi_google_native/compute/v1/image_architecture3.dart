/// The architecture of the image. Valid values are ARM64 or X86_64.
enum ImageArchitecture3 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const ImageArchitecture3(this.value);
  final String value;

  static ImageArchitecture3 fromValue(String value) {
    for (final item in ImageArchitecture3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitecture3 value: $value');
  }
}
