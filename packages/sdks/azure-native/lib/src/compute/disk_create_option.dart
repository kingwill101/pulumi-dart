/// This enumerates the possible sources of a disk's creation.
enum DiskCreateOption {
  empty("Empty"),
  attach("Attach"),
  fromImage("FromImage"),
  import("Import"),
  copy("Copy"),
  restore("Restore"),
  upload("Upload"),
  copyStart("CopyStart"),
  importSecure("ImportSecure"),
  uploadPreparedSecure("UploadPreparedSecure"),
  copyFromSanSnapshot("CopyFromSanSnapshot");

  const DiskCreateOption(this.value);
  final String value;

  static DiskCreateOption fromValue(String value) {
    for (final item in DiskCreateOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskCreateOption value: $value');
  }
}

