import 'package:pulumi/pulumi.dart' as pulumi;

/// This enumerates the possible sources of a disk's creation.
enum DiskCreateOption implements pulumi.PulumiEnum<String> {
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

  const DiskCreateOption(this.wireValue);
  @override
  final String wireValue;

  static DiskCreateOption fromValue(String value) {
    for (final item in DiskCreateOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskCreateOption value: $value');
  }
}
