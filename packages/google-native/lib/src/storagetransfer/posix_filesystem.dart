// ignore_for_file: unused_element, unnecessary_cast

/// A POSIX filesystem resource.
class PosixFilesystem {
  /// Root directory path to the filesystem.
  final String? rootDirectory;

  /// Creates a new [PosixFilesystem].
  /// [rootDirectory] Root directory path to the filesystem.
  PosixFilesystem({this.rootDirectory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rootDirectory': ?rootDirectory};
  }

  factory PosixFilesystem.fromMap(Map<String, dynamic> map) {
    return PosixFilesystem(
      rootDirectory: map['rootDirectory'] == null
          ? null
          : map['rootDirectory'] as String,
    );
  }
}
