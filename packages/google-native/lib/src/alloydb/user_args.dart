// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_user_type.dart';

/// {@template pulumi_alloydb_v1_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_user_args_doc}
class UserArgs {
  final pulumi.Input<String> clusterId;

  /// Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  final pulumi.Input<List<String>>? databaseRoles;
  final pulumi.Input<String>? location;

  /// Input only. Password for the user.
  final pulumi.Input<String>? password;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Required. ID of the requesting object.
  final pulumi.Input<String> userId;

  /// Optional. Type of this user.
  final pulumi.Input<UserUserType>? userType;

  /// Creates a new [UserArgs].
  /// [clusterId] Required.
  /// [databaseRoles] Optional. List of database roles this user has. The database role strings are subject to the PostgreSQL naming conventions.
  /// [location] Optional.
  /// [password] Input only. Password for the user.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [userId] Required. ID of the requesting object.
  /// [userType] Optional. Type of this user.
  UserArgs({
    required String clusterId,
    List<String>? databaseRoles,
    String? location,
    String? password,
    String? project,
    String? requestId,
    required String userId,
    UserUserType? userType,
  })  : clusterId = pulumi.Input.asInput<String>(clusterId),
        databaseRoles =
            pulumi.Input.asOptionalInput<List<String>>(databaseRoles),
        location = pulumi.Input.asOptionalInput<String>(location),
        password = pulumi.Input.asOptionalInput<String>(password),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        userId = pulumi.Input.asInput<String>(userId),
        userType = pulumi.Input.asOptionalInput<UserUserType>(userType);

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
      map['userType'] =
          pulumi.Input.mapOptionalInputValue<UserUserType, String>(
              userTypeValue, (value) => value.value);
    }
    return map;
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      clusterId: map['clusterId'] as String,
      databaseRoles: map['databaseRoles'] == null
          ? null
          : (map['databaseRoles'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      userId: map['userId'] as String,
      userType: map['userType'] == null
          ? null
          : UserUserType.fromValue(map['userType'] as String),
    );
  }
}
