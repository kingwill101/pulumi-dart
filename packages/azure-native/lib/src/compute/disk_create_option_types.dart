/// Specifies how the virtual machine disk should be created. Possible values are **Attach:** This value is used when you are using a specialized disk to create the virtual machine. **FromImage:** This value is used when you are using an image to create the virtual machine. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described.
enum DiskCreateOptionTypes {
  fromImage("FromImage"),
  empty("Empty"),
  attach("Attach"),
  copy("Copy"),
  restore("Restore");

  const DiskCreateOptionTypes(this.value);
  final String value;

  static DiskCreateOptionTypes fromValue(String value) {
    for (final item in DiskCreateOptionTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskCreateOptionTypes value: $value');
  }
}

