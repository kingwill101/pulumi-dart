/// The format of the actual VHD file [vhd, vhdx]
enum DiskFileFormat {
  vhdx("vhdx"),
  vhd("vhd");

  const DiskFileFormat(this.value);
  final String value;

  static DiskFileFormat fromValue(String value) {
    for (final item in DiskFileFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskFileFormat value: $value');
  }
}

