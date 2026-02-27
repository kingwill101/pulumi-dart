// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'sql_server_user_details.dart';
import 'user_dual_password_type.dart';
import 'user_password_validation_policy.dart';
import 'user_type.dart';

/// The set of arguments for User.
class UserArgs4 {
  /// Dual password status for the user.
  final Input<UserDualPasswordType>? dualPasswordType;

  /// This field is deprecated and will be removed from a future version of the API.
  final Input<String>? etag;

  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  final Input<String>? host;

  /// The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `update` because it is already specified on the URL.
  final Input<String> instance;

  /// This is always `sql#user`.
  final Input<String>? kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  final Input<String>? name;

  /// The password for the user.
  final Input<String>? password;

  /// User level password validation policy.
  final Input<UserPasswordValidationPolicy>? passwordPolicy;

  /// The project ID of the project containing the Cloud SQL database. The Google apps domain is prefixed if applicable. Can be omitted for `update` because it is already specified on the URL.
  final Input<String>? project;
  final Input<SqlServerUserDetails>? sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  final Input<UserType>? type;

  UserArgs4({
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
          Input.mapOptionalInputValue<UserDualPasswordType, String>(
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
      map['passwordPolicy'] = Input.mapOptionalInputValue<
          UserPasswordValidationPolicy,
          Map<String, dynamic>>(passwordPolicyValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sqlserverUserDetailsValue = sqlserverUserDetails;
    if (sqlserverUserDetailsValue != null) {
      map['sqlserverUserDetails'] = Input.mapOptionalInputValue<
              SqlServerUserDetails, Map<String, dynamic>>(
          sqlserverUserDetailsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<UserType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory UserArgs4.fromMap(Map<String, dynamic> map) {
    return UserArgs4(
      dualPasswordType:
          Input.asOptionalInput<UserDualPasswordType>(map['dualPasswordType']),
      etag: Input.asOptionalInput<String>(map['etag']),
      host: Input.asOptionalInput<String>(map['host']),
      instance: Input.asInput<String>(map['instance']),
      kind: Input.asOptionalInput<String>(map['kind']),
      name: Input.asOptionalInput<String>(map['name']),
      password: Input.asOptionalInput<String>(map['password']),
      passwordPolicy: Input.asOptionalInput<UserPasswordValidationPolicy>(
          map['passwordPolicy']),
      project: Input.asOptionalInput<String>(map['project']),
      sqlserverUserDetails: Input.asOptionalInput<SqlServerUserDetails>(
          map['sqlserverUserDetails']),
      type: Input.asOptionalInput<UserType>(map['type']),
    );
  }
}
