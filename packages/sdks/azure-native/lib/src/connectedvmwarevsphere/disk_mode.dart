/// Gets or sets the disk mode.
enum DiskMode {
  valuePersistent("persistent"),
  valueIndependentPersistent("independent_persistent"),
  valueIndependentNonpersistent("independent_nonpersistent");

  const DiskMode(this.value);
  final String value;

  static DiskMode fromValue(String value) {
    for (final item in DiskMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskMode value: $value');
  }
}

