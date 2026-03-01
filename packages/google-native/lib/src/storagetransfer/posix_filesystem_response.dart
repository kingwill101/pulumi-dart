// ignore_for_file: unused_element, unnecessary_cast

/// A POSIX filesystem resource.
class PosixFilesystemResponse {
  /// Root directory path to the filesystem.
  final String rootDirectory;

  /// Creates a new [PosixFilesystemResponse].
  /// [rootDirectory] Root directory path to the filesystem.
  PosixFilesystemResponse({required this.rootDirectory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'rootDirectory': rootDirectory};
  }

  factory PosixFilesystemResponse.fromMap(Map<String, dynamic> map) {
    return PosixFilesystemResponse(
      rootDirectory: map['rootDirectory'] as String,
    );
  }
}
