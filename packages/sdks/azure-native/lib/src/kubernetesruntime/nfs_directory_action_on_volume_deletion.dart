/// The action to take when a NFS volume is deleted. Default is Delete
enum NfsDirectoryActionOnVolumeDeletion {
  delete("Delete"),
  retain("Retain");

  const NfsDirectoryActionOnVolumeDeletion(this.value);
  final String value;

  static NfsDirectoryActionOnVolumeDeletion fromValue(String value) {
    for (final item in NfsDirectoryActionOnVolumeDeletion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsDirectoryActionOnVolumeDeletion value: $value');
  }
}

