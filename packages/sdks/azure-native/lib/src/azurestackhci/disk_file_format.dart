/// The format of the actual VHD file [vhd, vhdx]
enum DiskFileFormat {
  vhdx("vhdx"),
  vhd("vhd");

  const DiskFileFormat(this.wireValue);
  final String wireValue;

  static DiskFileFormat fromValue(String value) {
    for (final item in DiskFileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskFileFormat value: $value');
  }
}

