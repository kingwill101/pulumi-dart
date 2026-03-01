/// Indicates the type of job details.
enum ClassDiscriminator {
  valueDataBox("DataBox"),
  valueDataBoxDisk("DataBoxDisk"),
  valueDataBoxHeavy("DataBoxHeavy"),
  valueDataBoxCustomerDisk("DataBoxCustomerDisk");

  const ClassDiscriminator(this.value);
  final String value;

  static ClassDiscriminator fromValue(String value) {
    for (final item in ClassDiscriminator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClassDiscriminator value: $value');
  }
}

