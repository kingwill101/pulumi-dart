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
  GetGroupUser({
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
      arn: (map['arn'] as String).input(),
      path: (map['path'] as String).input(),
      userId: (map['userId'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

