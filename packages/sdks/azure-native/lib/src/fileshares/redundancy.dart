/// The chosen redundancy level of the file share.
enum Redundancy {
  local("Local"),
  zone("Zone");

  const Redundancy(this.value);
  final String value;

  static Redundancy fromValue(String value) {
    for (final item in Redundancy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Redundancy value: $value');
  }
}

