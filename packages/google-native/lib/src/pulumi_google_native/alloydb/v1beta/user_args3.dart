// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'user_user_type3.dart';

/// The set of arguments for User.
class UserArgs3 {
  final Input<String> clusterId;

  /// Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  final Input<List<String>>? databaseRoles;
  final Input<String>? location;

  /// Input only. Password for the user.
  final Input<String>? password;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Required. ID of the requesting object.
  final Input<String> userId;

  /// Optional. Type of this user.
  final Input<UserUserType3>? userType;

  UserArgs3({
    required this.clusterId,
    this.databaseRoles,
    this.location,
    this.password,
    this.project,
    this.requestId,
    required this.userId,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final databaseRolesValue = databaseRoles;
    if (databaseRolesValue != null) {
      map['databaseRoles'] = databaseRolesValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['userId'] = userId;
    final userTypeValue = userType;
    if (userTypeValue != null) {
      map['userType'] = Input.mapOptionalInputValue<UserUserType3, String>(
          userTypeValue, (value) => value.value);
    }
    return map;
  }

  factory UserArgs3.fromMap(Map<String, dynamic> map) {
    return UserArgs3(
      clusterId: Input.asInput<String>(map['clusterId']),
      databaseRoles: Input.asOptionalInput<List<String>>(map['databaseRoles']),
      location: Input.asOptionalInput<String>(map['location']),
      password: Input.asOptionalInput<String>(map['password']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      userId: Input.asInput<String>(map['userId']),
      userType: Input.asOptionalInput<UserUserType3>(map['userType']),
    );
  }
}
