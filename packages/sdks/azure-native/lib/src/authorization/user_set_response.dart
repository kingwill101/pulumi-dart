// ignore_for_file: unused_element, unnecessary_cast


/// The detail of a user.
class UserSetResponse {
  /// The description of the user.
  final String? description;
  /// The object id of the user.
  final String? id;
  /// The value indicating whether the user is a backup fallback approver
  final bool? isBackup;
  /// The type of user.
  final String? userType;

  /// Creates a new [UserSetResponse].
  /// [description] The description of the user.
  /// [id] The object id of the user.
  /// [isBackup] The value indicating whether the user is a backup fallback approver
  /// [userType] The type of user.
  UserSetResponse({
    this.description,
    this.id,
    this.isBackup,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'isBackup': ?isBackup,
      'userType': ?userType,
    };
  }

  factory UserSetResponse.fromMap(Map<String, dynamic> map) {
    return UserSetResponse(
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      isBackup: map['isBackup'] == null ? null : map['isBackup'] as bool,
      userType: map['userType'] == null ? null : map['userType'] as String,
    );
  }
}

