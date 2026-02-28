/// Required. Type of the manifest.
enum ManifestType {
  manifestTypeUnspecified("MANIFEST_TYPE_UNSPECIFIED"),
  hls("HLS"),
  dash("DASH");

  const ManifestType(this.value);
  final String value;

  static ManifestType fromValue(String value) {
    for (final item in ManifestType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManifestType value: $value');
  }
}
