// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupUser {
  /// User ARN.
  final pulumi.Input<String> arn;
  /// Path to the IAM user.
  final pulumi.Input<String> path;
  /// Stable and unique string identifying the IAM user.
  final pulumi.Input<String> userId;
  /// Name of the IAM user.
  final pulumi.Input<String> userName;

  /// Creates a new [GetGroupUser].
  /// [arn] User ARN.
  /// [path] Path to the IAM user.
  /// [userId] Stable and unique string identifying the IAM user.
  /// [userName] Name of the IAM user.
  const GetGroupUser({
    required this.arn,
    required this.path,
    required this.userId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'path': path,
      'userId': userId,
      'userName': userName,
    };
  }

  factory GetGroupUser.fromMap(Map<String, dynamic> map) {
    return GetGroupUser(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

