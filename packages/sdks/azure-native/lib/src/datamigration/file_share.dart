// ignore_for_file: unused_element, unnecessary_cast


/// File share information with Path, Username, and Password.
class FileShare {
  /// Password credential used to connect to the share location.
  final String? password;
  /// The folder path for this share.
  final String path;
  /// User name credential to connect to the share location
  final String? userName;

  /// Creates a new [FileShare].
  /// [password] Password credential used to connect to the share location.
  /// [path] The folder path for this share.
  /// [userName] User name credential to connect to the share location
  FileShare({
    this.password,
    required this.path,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'path': path,
      'userName': ?userName,
    };
  }

  factory FileShare.fromMap(Map<String, dynamic> map) {
    return FileShare(
      password: map['password'] == null ? null : map['password'] as String,
      path: map['path'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

