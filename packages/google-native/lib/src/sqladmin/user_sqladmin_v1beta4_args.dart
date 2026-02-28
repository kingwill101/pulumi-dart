// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_user_details_sqladmin_v1beta4.dart';
import 'user_dual_password_type_sqladmin_v1beta4.dart';
import 'user_password_validation_policy_sqladmin_v1beta4.dart';
import 'user_type_sqladmin_v1beta4.dart';

/// {@template pulumi_sqladmin_v1beta4_user_sqladmin_v1beta4_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_user_sqladmin_v1beta4_args_doc}
class UserSqladminV1beta4Args {
  /// Dual password status for the user.
  final pulumi.Input<UserDualPasswordTypeSqladminV1beta4>? dualPasswordType;

  /// This field is deprecated and will be removed from a future version of the API.
  final pulumi.Input<String>? etag;

  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  final pulumi.Input<String>? host;

  /// The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for *update* because it is already specified on the URL.
  final pulumi.Input<String> instance;

  /// This is always `sql#user`.
  final pulumi.Input<String>? kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  final pulumi.Input<String>? name;

  /// The password for the user.
  final pulumi.Input<String>? password;

  /// User level password validation policy.
  final pulumi.Input<UserPasswordValidationPolicySqladminV1beta4>?
      passwordPolicy;

  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for *update* because it is already specified on the URL.
  final pulumi.Input<String>? project;
  final pulumi.Input<SqlServerUserDetailsSqladminV1beta4>? sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  final pulumi.Input<UserTypeSqladminV1beta4>? type;

  /// Creates a new [UserSqladminV1beta4Args].
  /// [dualPasswordType] Dual password status for the user.
  /// [etag] This field is deprecated and will be removed from a future version of the API.
  /// [host] Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  /// [instance] The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for *update* because it is already specified on the URL.
  /// [kind] This is always `sql#user`.
  /// [name] The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  /// [password] The password for the user.
  /// [passwordPolicy] User level password validation policy.
  /// [project] The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for *update* because it is already specified on the URL.
  /// [sqlserverUserDetails] Optional.
  /// [type] The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  UserSqladminV1beta4Args({
    UserDualPasswordTypeSqladminV1beta4? dualPasswordType,
    String? etag,
    String? host,
    required String instance,
    String? kind,
    String? name,
    String? password,
    UserPasswordValidationPolicySqladminV1beta4? passwordPolicy,
    String? project,
    SqlServerUserDetailsSqladminV1beta4? sqlserverUserDetails,
    UserTypeSqladminV1beta4? type,
  })  : dualPasswordType =
            pulumi.Input.asOptionalInput<UserDualPasswordTypeSqladminV1beta4>(
                dualPasswordType),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        host = pulumi.Input.asOptionalInput<String>(host),
        instance = pulumi.Input.asInput<String>(instance),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        name = pulumi.Input.asOptionalInput<String>(name),
        password = pulumi.Input.asOptionalInput<String>(password),
        passwordPolicy = pulumi.Input.asOptionalInput<
            UserPasswordValidationPolicySqladminV1beta4>(passwordPolicy),
        project = pulumi.Input.asOptionalInput<String>(project),
        sqlserverUserDetails =
            pulumi.Input.asOptionalInput<SqlServerUserDetailsSqladminV1beta4>(
                sqlserverUserDetails),
        type = pulumi.Input.asOptionalInput<UserTypeSqladminV1beta4>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dualPasswordTypeValue = dualPasswordType;
    if (dualPasswordTypeValue != null) {
      map['dualPasswordType'] = pulumi.Input.mapOptionalInputValue<
          UserDualPasswordTypeSqladminV1beta4,
          String>(dualPasswordTypeValue, (value) => value.value);
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    map['instance'] = instance;
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final passwordPolicyValue = passwordPolicy;
    if (passwordPolicyValue != null) {
      map['passwordPolicy'] = pulumi.Input.mapOptionalInputValue<
          UserPasswordValidationPolicySqladminV1beta4,
          Map<String, dynamic>>(passwordPolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sqlserverUserDetailsValue = sqlserverUserDetails;
    if (sqlserverUserDetailsValue != null) {
      map['sqlserverUserDetails'] = pulumi.Input.mapOptionalInputValue<
              SqlServerUserDetailsSqladminV1beta4, Map<String, dynamic>>(
          sqlserverUserDetailsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          pulumi.Input.mapOptionalInputValue<UserTypeSqladminV1beta4, String>(
              typeValue, (value) => value.value);
    }
    return map;
  }

  factory UserSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return UserSqladminV1beta4Args(
      dualPasswordType: map['dualPasswordType'] == null
          ? null
          : UserDualPasswordTypeSqladminV1beta4.fromValue(
              map['dualPasswordType'] as String),
      etag: map['etag'] == null ? null : map['etag'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      instance: map['instance'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      passwordPolicy: map['passwordPolicy'] == null
          ? null
          : UserPasswordValidationPolicySqladminV1beta4.fromMap(
              (map['passwordPolicy'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      sqlserverUserDetails: map['sqlserverUserDetails'] == null
          ? null
          : SqlServerUserDetailsSqladminV1beta4.fromMap(
              (map['sqlserverUserDetails'] as Map).cast<String, dynamic>()),
      type: map['type'] == null
          ? null
          : UserTypeSqladminV1beta4.fromValue(map['type'] as String),
    );
  }
}
