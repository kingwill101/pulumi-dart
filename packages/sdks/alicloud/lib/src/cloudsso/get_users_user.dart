// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user_mfa_device.dart';

class GetUsersUser {
  /// The create time of the user.
  final pulumi.Input<String> createTime;
  /// The description of user.
  final pulumi.Input<String> description;
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// The display name of user.
  final pulumi.Input<String> displayName;
  /// The User's Contact Email Address.
  final pulumi.Input<String> email;
  /// The first name of user.
  final pulumi.Input<String> firstName;
  /// The ID of the User.
  final pulumi.Input<String> id;
  /// The last name of user.
  final pulumi.Input<String> lastName;
  /// The List of MFA Device for User.
  final pulumi.Input<List<GetUsersUserMfaDevice>> mfaDevices;
  /// ProvisionType.
  final pulumi.Input<String> provisionType;
  /// User status. Valid values: `Enabled` and `Disabled`.
  final pulumi.Input<String> status;
  /// The User ID of the group.
  final pulumi.Input<String> userId;
  /// The name of user.
  final pulumi.Input<String> userName;

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
  const GetUsersUser({
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
      'mfaDevices': pulumi.Input.mapInputValue<List<GetUsersUserMfaDevice>, List<Map<String, dynamic>>>(mfaDevices, (value) => pulumi.Input.encodeList<GetUsersUserMfaDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisionType': provisionType,
      'status': status,
      'userId': userId,
      'userName': userName,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      mfaDevices: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUsersUserMfaDevice>(map['mfaDevices']!, (value) => GetUsersUserMfaDevice.fromMap((value as Map).cast<String, dynamic>()))),
      provisionType: pulumi.Input.fromValue(map['provisionType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

