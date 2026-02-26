// ignore_for_file: unused_element, unnecessary_cast

/// A POSIX filesystem resource.
class PosixFilesystem {
  /// Root directory path to the filesystem.
  final String? rootDirectory;

  PosixFilesystem({
    this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rootDirectoryValue = rootDirectory;
    if (rootDirectoryValue != null) {
      map['rootDirectory'] = rootDirectoryValue;
    }
    return map;
  }

  factory PosixFilesystem.fromMap(Map<String, dynamic> map) {
    return PosixFilesystem(
      rootDirectory:
          map['rootDirectory'] == null ? null : map['rootDirectory'] as String,
    );
  }
}
