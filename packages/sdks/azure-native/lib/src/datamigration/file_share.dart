// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File share information with Path, Username, and Password.
class FileShare {
  /// Password credential used to connect to the share location.
  final pulumi.Input<String>? password;

  /// The folder path for this share.
  final pulumi.Input<String> path;

  /// User name credential to connect to the share location
  final pulumi.Input<String>? userName;

  /// Creates a new [FileShare].
  /// [password] Password credential used to connect to the share location.
  /// [path] The folder path for this share.
  /// [userName] User name credential to connect to the share location
  FileShare({this.password, required this.path, this.userName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'path': path,
      'userName': ?userName,
    };
  }

  factory FileShare.fromMap(Map<String, dynamic> map) {
    return FileShare(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
