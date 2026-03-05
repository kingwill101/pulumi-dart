/// Specifies how the virtual machines in the scale set should be created. The only
/// allowed value is: **FromImage.** This value is used when you are using an image
/// to create the virtual machine. If you are using a platform image, you also use
/// the imageReference element described above. If you are using a marketplace
/// image, you  also use the plan element previously described.
enum DiskCreateOptionTypes {
  fromImage("FromImage"),
  empty("Empty"),
  attach("Attach"),
  copy("Copy"),
  restore("Restore");

  const DiskCreateOptionTypes(this.wireValue);
  final String wireValue;

  static DiskCreateOptionTypes fromValue(String value) {
    for (final item in DiskCreateOptionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskCreateOptionTypes value: $value');
  }
}

