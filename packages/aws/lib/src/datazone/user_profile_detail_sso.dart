// ignore_for_file: unused_element, unnecessary_cast

class UserProfileDetailSso {
  final String firstName;
  final String lastName;
  final String userName;

  /// Creates a new [UserProfileDetailSso].
  /// [firstName] Required.
  /// [lastName] Required.
  /// [userName] Required.
  UserProfileDetailSso({
    required this.firstName,
    required this.lastName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['userName'] = userName;
    return map;
  }

  factory UserProfileDetailSso.fromMap(Map<String, dynamic> map) {
    return UserProfileDetailSso(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      userName: map['userName'] as String,
    );
  }
}
