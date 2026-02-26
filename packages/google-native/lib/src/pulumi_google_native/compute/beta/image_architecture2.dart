/// The architecture of the image. Valid values are ARM64 or X86_64.
enum ImageArchitecture2 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const ImageArchitecture2(this.value);
  final String value;

  static ImageArchitecture2 fromValue(String value) {
    for (final item in ImageArchitecture2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageArchitecture2 value: $value');
  }
}
