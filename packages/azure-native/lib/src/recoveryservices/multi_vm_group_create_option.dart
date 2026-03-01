/// Whether Multi VM group is auto created or specified by user.
enum MultiVmGroupCreateOption {
  valueAutoCreated("AutoCreated"),
  valueUserSpecified("UserSpecified");

  const MultiVmGroupCreateOption(this.value);
  final String value;

  static MultiVmGroupCreateOption fromValue(String value) {
    for (final item in MultiVmGroupCreateOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiVmGroupCreateOption value: $value');
  }
}

