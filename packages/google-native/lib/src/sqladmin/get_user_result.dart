// ignore_for_file: unused_element, unnecessary_cast

import 'sql_server_user_details_response.dart';
import 'user_password_validation_policy_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// Dual password status for the user.
  final String dualPasswordType;

  /// This field is deprecated and will be removed from a future version of the API.
  final String etag;

  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  final String host;

  /// The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `update` because it is already specified on the URL.
  final String instance;

  /// This is always `sql#user`.
  final String kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  final String name;

  /// The password for the user.
  final String password;

  /// User level password validation policy.
  final UserPasswordValidationPolicyResponse passwordPolicy;

  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for `update` because it is already specified on the URL.
  final String project;
  final SqlServerUserDetailsResponse sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  final String type;

  /// Creates a new [GetUserResult].
  /// [dualPasswordType] Dual password status for the user.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [host] Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `update` because it is already specified on the URL.
  /// [kind] This is always `sql#user`.
  /// [name] The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  /// [password] The password for the user.
  /// [passwordPolicy] User level password validation policy.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for `update` because it is already specified on the URL.
  /// [sqlserverUserDetails] Required.
  /// [type] The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  GetUserResult({
    required this.dualPasswordType,
    required this.etag,
    required this.host,
    required this.instance,
    required this.kind,
    required this.name,
    required this.password,
    required this.passwordPolicy,
    required this.project,
    required this.sqlserverUserDetails,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dualPasswordType': dualPasswordType,
      'etag': etag,
      'host': host,
      'instance': instance,
      'kind': kind,
      'name': name,
      'password': password,
      'passwordPolicy': passwordPolicy.toMap(),
      'project': project,
      'sqlserverUserDetails': sqlserverUserDetails.toMap(),
      'type': type,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      dualPasswordType: map['dualPasswordType'] as String,
      etag: map['etag'] as String,
      host: map['host'] as String,
      instance: map['instance'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      passwordPolicy: UserPasswordValidationPolicyResponse.fromMap(
        (map['passwordPolicy'] as Map).cast<String, dynamic>(),
      ),
      project: map['project'] as String,
      sqlserverUserDetails: SqlServerUserDetailsResponse.fromMap(
        (map['sqlserverUserDetails'] as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
