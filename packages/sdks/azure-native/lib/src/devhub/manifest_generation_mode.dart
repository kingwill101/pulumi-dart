/// The mode of generation to be used for generating Manifest.
enum ManifestGenerationMode {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const ManifestGenerationMode(this.wireValue);
  final String wireValue;

  static ManifestGenerationMode fromValue(String value) {
    for (final item in ManifestGenerationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManifestGenerationMode value: $value');
  }
}

