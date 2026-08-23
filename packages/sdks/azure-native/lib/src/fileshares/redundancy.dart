/// The chosen redundancy level of the file share.
enum Redundancy {
  local("Local"),
  zone("Zone");

  const Redundancy(this.wireValue);
  final String wireValue;

  static Redundancy fromValue(String value) {
    for (final item in Redundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Redundancy value: $value');
  }
}
