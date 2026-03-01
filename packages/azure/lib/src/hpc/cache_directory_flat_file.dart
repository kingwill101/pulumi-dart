// ignore_for_file: unused_element, unnecessary_cast


class CacheDirectoryFlatFile {
  /// The URI of the file containing group information (`/etc/group` file format in Unix-like OS).
  final String groupFileUri;
  /// The URI of the file containing user information (`/etc/passwd` file format in Unix-like OS).
  final String passwordFileUri;

  /// Creates a new [CacheDirectoryFlatFile].
  /// [groupFileUri] The URI of the file containing group information (`/etc/group` file format in Unix-like OS).
  /// [passwordFileUri] The URI of the file containing user information (`/etc/passwd` file format in Unix-like OS).
  CacheDirectoryFlatFile({
    required this.groupFileUri,
    required this.passwordFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupFileUri': groupFileUri,
      'passwordFileUri': passwordFileUri,
    };
  }

  factory CacheDirectoryFlatFile.fromMap(Map<String, dynamic> map) {
    return CacheDirectoryFlatFile(
      groupFileUri: map['groupFileUri'] as String,
      passwordFileUri: map['passwordFileUri'] as String,
    );
  }
}

