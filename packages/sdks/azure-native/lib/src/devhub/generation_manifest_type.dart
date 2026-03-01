/// Determines the type of manifests to be generated.
enum GenerationManifestType {
  valueHelm("helm"),
  valueKube("kube");

  const GenerationManifestType(this.value);
  final String value;

  static GenerationManifestType fromValue(String value) {
    for (final item in GenerationManifestType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GenerationManifestType value: $value');
  }
}

