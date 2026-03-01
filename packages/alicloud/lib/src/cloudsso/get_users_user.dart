// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user_mfa_device.dart';

class GetUsersUser {
  /// The create time of the user.
  final String createTime;
  /// The description of user.
  final String description;
  /// The ID of the Directory.
  final String directoryId;
  /// The display name of user.
  final String displayName;
  /// The User's Contact Email Address.
  final String email;
  /// The first name of user.
  final String firstName;
  /// The ID of the User.
  final String id;
  /// The last name of user.
  final String lastName;
  /// The List of MFA Device for User.
  final List<GetUsersUserMfaDevice> mfaDevices;
  /// ProvisionType.
  final String provisionType;
  /// User status. Valid values: `Enabled` and `Disabled`.
  final String status;
  /// The User ID of the group.
  final String userId;
  /// The name of user.
  final String userName;

  /// Creates a new [GetUsersUser].
  /// [createTime] The create time of the user.
  /// [description] The description of user.
  /// [directoryId] The ID of the Directory.
  /// [displayName] The display name of user.
  /// [email] The User's Contact Email Address.
  /// [firstName] The first name of user.
  /// [id] The ID of the User.
  /// [lastName] The last name of user.
  /// [mfaDevices] The List of MFA Device for User.
  /// [provisionType] ProvisionType.
  /// [status] User status. Valid values: `Enabled` and `Disabled`.
  /// [userId] The User ID of the group.
  /// [userName] The name of user.
  GetUsersUser({
    required this.createTime,
    required this.description,
    required this.directoryId,
    required this.displayName,
    required this.email,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.mfaDevices,
    required this.provisionType,
    required this.status,
    required this.userId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'directoryId': directoryId,
      'displayName': displayName,
      'email': email,
      'firstName': firstName,
      'id': id,
      'lastName': lastName,
      'mfaDevices': pulumi.Input.encodeList<GetUsersUserMfaDevice, Map<String, dynamic>>(mfaDevices, (value) => value.toMap()),
      'provisionType': provisionType,
      'status': status,
      'userId': userId,
      'userName': userName,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      directoryId: map['directoryId'] as String,
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      id: map['id'] as String,
      lastName: map['lastName'] as String,
      mfaDevices: pulumi.Input.decodeList<GetUsersUserMfaDevice>(map['mfaDevices'], (value) => GetUsersUserMfaDevice.fromMap((value as Map).cast<String, dynamic>())),
      provisionType: map['provisionType'] as String,
      status: map['status'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
    );
  }
}

