/// Volume can be expanded or not
enum VolumeExpansion {
  allow("Allow"),
  disallow("Disallow");

  const VolumeExpansion(this.wireValue);
  final String wireValue;

  static VolumeExpansion fromValue(String value) {
    for (final item in VolumeExpansion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeExpansion value: $value');
  }
}
