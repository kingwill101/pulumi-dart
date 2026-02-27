// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_user_details.dart';
import 'user_dual_password_type.dart';
import 'user_password_validation_policy.dart';
import 'user_type.dart';

/// The set of arguments for User.
class UserSqladminV1Args {
  /// Dual password status for the user.
  final pulumi.Input<UserDualPasswordType>? dualPasswordType;

  /// This field is deprecated and will be removed from a future version of the API.
  final pulumi.Input<String>? etag;

  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  final pulumi.Input<String>? host;

  /// The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `update` because it is already specified on the URL.
  final pulumi.Input<String> instance;

  /// This is always `sql#user`.
  final pulumi.Input<String>? kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  final pulumi.Input<String>? name;

  /// The password for the user.
  final pulumi.Input<String>? password;

  /// User level password validation policy.
  final pulumi.Input<UserPasswordValidationPolicy>? passwordPolicy;

  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for `update` because it is already specified on the URL.
  final pulumi.Input<String>? project;
  final pulumi.Input<SqlServerUserDetails>? sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  final pulumi.Input<UserType>? type;

  UserSqladminV1Args({
    this.dualPasswordType,
    this.etag,
    this.host,
    required this.instance,
    this.kind,
    this.name,
    this.password,
    this.passwordPolicy,
    this.project,
    this.sqlserverUserDetails,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dualPasswordTypeValue = dualPasswordType;
    if (dualPasswordTypeValue != null) {
      map['dualPasswordType'] =
          pulumi.Input.mapOptionalInputValue<UserDualPasswordType, String>(
              dualPasswordTypeValue, (value) => value.value);
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
          UserPasswordValidationPolicy,
          Map<String, dynamic>>(passwordPolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sqlserverUserDetailsValue = sqlserverUserDetails;
    if (sqlserverUserDetailsValue != null) {
      map['sqlserverUserDetails'] = pulumi.Input.mapOptionalInputValue<
              SqlServerUserDetails, Map<String, dynamic>>(
          sqlserverUserDetailsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<UserType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory UserSqladminV1Args.fromMap(Map<String, dynamic> map) {
    return UserSqladminV1Args(
      dualPasswordType: pulumi.Input.asOptionalInput<UserDualPasswordType>(
          map['dualPasswordType']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      host: pulumi.Input.asOptionalInput<String>(map['host']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      password: pulumi.Input.asOptionalInput<String>(map['password']),
      passwordPolicy:
          pulumi.Input.asOptionalInput<UserPasswordValidationPolicy>(
              map['passwordPolicy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sqlserverUserDetails: pulumi.Input.asOptionalInput<SqlServerUserDetails>(
          map['sqlserverUserDetails']),
      type: pulumi.Input.asOptionalInput<UserType>(map['type']),
    );
  }
}
