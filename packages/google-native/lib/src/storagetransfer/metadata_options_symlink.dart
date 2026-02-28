/// Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
enum MetadataOptionsSymlink {
  symlinkUnspecified("SYMLINK_UNSPECIFIED"),
  symlinkSkip("SYMLINK_SKIP"),
  symlinkPreserve("SYMLINK_PRESERVE");

  const MetadataOptionsSymlink(this.value);
  final String value;

  static MetadataOptionsSymlink fromValue(String value) {
    for (final item in MetadataOptionsSymlink.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsSymlink value: $value');
  }
}

