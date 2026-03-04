/// GPUInstanceProfile to be used to specify GPU MIG instance profile for supported GPU VM SKU.
enum GPUInstanceProfile {
  valueMIG1g("MIG1g"),
  valueMIG2g("MIG2g"),
  valueMIG3g("MIG3g"),
  valueMIG4g("MIG4g"),
  valueMIG7g("MIG7g");

  const GPUInstanceProfile(this.wireValue);
  final String wireValue;

  static GPUInstanceProfile fromValue(String value) {
    for (final item in GPUInstanceProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUInstanceProfile value: $value');
  }
}
