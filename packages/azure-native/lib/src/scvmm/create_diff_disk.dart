/// Gets or sets a value indicating diff disk.
enum CreateDiffDisk {
  valueFalse("false"),
  valueTrue("true");

  const CreateDiffDisk(this.value);
  final String value;

  static CreateDiffDisk fromValue(String value) {
    for (final item in CreateDiffDisk.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateDiffDisk value: $value');
  }
}

