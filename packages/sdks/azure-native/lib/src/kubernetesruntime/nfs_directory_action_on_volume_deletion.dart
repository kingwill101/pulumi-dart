import 'package:pulumi/pulumi.dart' as pulumi;

/// The action to take when a NFS volume is deleted. Default is Delete
enum NfsDirectoryActionOnVolumeDeletion implements pulumi.PulumiEnum<String> {
  delete("Delete"),
  retain("Retain");

  const NfsDirectoryActionOnVolumeDeletion(this.wireValue);
  @override
  final String wireValue;

  static NfsDirectoryActionOnVolumeDeletion fromValue(String value) {
    for (final item in NfsDirectoryActionOnVolumeDeletion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsDirectoryActionOnVolumeDeletion value: $value');
  }
}
