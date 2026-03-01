// ignore_for_file: unused_element, unnecessary_cast


/// The user object receiver value.
class UserObjectReceiverValue {
  /// user object ids.
  final List<String>? userObjectIds;

  /// Creates a new [UserObjectReceiverValue].
  /// [userObjectIds] user object ids.
  UserObjectReceiverValue({
    this.userObjectIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userObjectIds': ?userObjectIds,
    };
  }

  factory UserObjectReceiverValue.fromMap(Map<String, dynamic> map) {
    return UserObjectReceiverValue(
      userObjectIds: map['userObjectIds'] == null ? null : (map['userObjectIds'] as List).cast<String>(),
    );
  }
}

