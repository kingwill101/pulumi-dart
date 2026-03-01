// ignore_for_file: unused_element, unnecessary_cast


class GetUsersUser {
  /// Alibaba Cloud account ID.
  final String accountId;
  /// An Alibaba Cloud account, Alibaba Cloud name.
  final String accountName;
  /// Whether it is the administrator. Valid values: `true` and `false`.
  final bool adminUser;
  /// Whether this is a permissions administrator. Valid values: `true` and `false`.
  final bool authAdminUser;
  /// The email of the user.
  final String email;
  /// The ID of the User.
  final String id;
  /// The nickname of the user.
  final String nickName;
  /// The phone number of the user.
  final String phone;
  /// The ID of the User.
  final String userId;
  /// The members of the organization of the type of role separately. Valid values: `Analyst`, `Developer` and `Visitor`.
  final String userType;

  /// Creates a new [GetUsersUser].
  /// [accountId] Alibaba Cloud account ID.
  /// [accountName] An Alibaba Cloud account, Alibaba Cloud name.
  /// [adminUser] Whether it is the administrator. Valid values: `true` and `false`.
  /// [authAdminUser] Whether this is a permissions administrator. Valid values: `true` and `false`.
  /// [email] The email of the user.
  /// [id] The ID of the User.
  /// [nickName] The nickname of the user.
  /// [phone] The phone number of the user.
  /// [userId] The ID of the User.
  /// [userType] The members of the organization of the type of role separately. Valid values: `Analyst`, `Developer` and `Visitor`.
  GetUsersUser({
    required this.accountId,
    required this.accountName,
    required this.adminUser,
    required this.authAdminUser,
    required this.email,
    required this.id,
    required this.nickName,
    required this.phone,
    required this.userId,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'accountName': accountName,
      'adminUser': adminUser,
      'authAdminUser': authAdminUser,
      'email': email,
      'id': id,
      'nickName': nickName,
      'phone': phone,
      'userId': userId,
      'userType': userType,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      accountId: map['accountId'] as String,
      accountName: map['accountName'] as String,
      adminUser: map['adminUser'] as bool,
      authAdminUser: map['authAdminUser'] as bool,
      email: map['email'] as String,
      id: map['id'] as String,
      nickName: map['nickName'] as String,
      phone: map['phone'] as String,
      userId: map['userId'] as String,
      userType: map['userType'] as String,
    );
  }
}

