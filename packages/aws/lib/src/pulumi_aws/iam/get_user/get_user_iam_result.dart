// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUser.
class GetUserIamResult {
  /// ARN assigned by AWS for this user.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Path in which this user was created.
  final String path;

  /// The ARN of the policy that is used to set the permissions boundary for the user.
  final String permissionsBoundary;

  /// Map of key-value pairs associated with the user.
  final Map<String, String> tags;

  /// Unique ID assigned by AWS for this user.
  final String userId;

  /// Name associated to this User
  final String userName;

  GetUserIamResult({
    required this.arn,
    required this.id,
    required this.path,
    required this.permissionsBoundary,
    required this.tags,
    required this.userId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['path'] = path;
    map['permissionsBoundary'] = permissionsBoundary;
    map['tags'] = tags;
    map['userId'] = userId;
    map['userName'] = userName;
    return map;
  }

  factory GetUserIamResult.fromMap(Map<String, dynamic> map) {
    return GetUserIamResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      path: map['path'] as String,
      permissionsBoundary: map['permissionsBoundary'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userId: map['userId'] as String,
      userName: map['userName'] as String,
    );
  }
}
