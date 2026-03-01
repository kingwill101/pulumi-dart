/// Determines the type of manifests within the repository.
enum ManifestType {
  valueHelm("helm"),
  valueKube("kube");

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

