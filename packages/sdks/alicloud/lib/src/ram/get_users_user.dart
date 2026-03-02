// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUser {
  /// Creation date of the user.
  final pulumi.Input<String> createDate;
  /// The original id is user's name, but it is user id in 1.37.0+.
  final pulumi.Input<String> id;
  /// (Removed) Last login date of the user. Removed from version 1.79.0.
  final pulumi.Input<String> lastLoginDate;
  /// Name of the user.
  final pulumi.Input<String> name;

  /// Creates a new [GetUsersUser].
  /// [createDate] Creation date of the user.
  /// [id] The original id is user's name, but it is user id in 1.37.0+.
  /// [lastLoginDate] (Removed) Last login date of the user. Removed from version 1.79.0.
  /// [name] Name of the user.
  GetUsersUser({
    required this.createDate,
    required this.id,
    required this.lastLoginDate,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDate': createDate,
      'id': id,
      'lastLoginDate': lastLoginDate,
      'name': name,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      createDate: (map['createDate'] as String).input(),
      id: (map['id'] as String).input(),
      lastLoginDate: (map['lastLoginDate'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

