/// Volume can be expanded or not
enum VolumeExpansion {
  allow("Allow"),
  disallow("Disallow");

  const VolumeExpansion(this.value);
  final String value;

  static VolumeExpansion fromValue(String value) {
    for (final item in VolumeExpansion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeExpansion value: $value');
  }
}

