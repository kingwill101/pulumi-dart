// ignore_for_file: unused_element, unnecessary_cast

/// A POSIX filesystem resource.
class PosixFilesystemResponse {
  /// Root directory path to the filesystem.
  final String rootDirectory;

  PosixFilesystemResponse({
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rootDirectory'] = rootDirectory;
    return map;
  }

  factory PosixFilesystemResponse.fromMap(Map<String, dynamic> map) {
    return PosixFilesystemResponse(
      rootDirectory: map['rootDirectory'] as String,
    );
  }
}
