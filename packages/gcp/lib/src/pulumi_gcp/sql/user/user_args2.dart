// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_password_policy/user_password_policy.dart';

/// The set of arguments for User.
class UserArgs2 {
  /// The deletion policy for the user.
  /// Setting `ABANDON` allows the resource to be abandoned rather than deleted. This is useful
  /// for Postgres, where users cannot be deleted from the API if they have been granted SQL roles.
  ///
  /// Possible values are: `ABANDON`.
  final Input<String>? deletionPolicy;

  /// The host the user can connect from. This is only supported
  /// for BUILT_IN users in MySQL instances. Don't set this field for PostgreSQL and SQL Server instances.
  /// Can be an IP address. Changing this forces a new resource to be created.
  final Input<String>? host;

  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  final Input<String> instance;

  /// The name of the user. Changing this forces a new resource
  /// to be created.
  final Input<String>? name;

  /// The password for the user. Can be updated. For Postgres
  /// instances this is a Required field, unless type is set to either CLOUD_IAM_USER
  /// or CLOUD_IAM_SERVICE_ACCOUNT. Don't set this field for CLOUD_IAM_USER
  /// and CLOUD_IAM_SERVICE_ACCOUNT user types for any Cloud SQL instance.
  final Input<String>? password;
  final Input<UserPasswordPolicy>? passwordPolicy;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to
  /// either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT.
  final Input<String>? passwordWo;

  /// The version of the password_wo. For more info see [updating write-only attributes](https://www.terraform.io/docs/providers/google/guides/using_write_only_attributes.html#updating-write-only-attributes).
  ///
  /// - - -
  final Input<int>? passwordWoVersion;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The user type. It determines the method to authenticate the
  /// user during login. The default is the database's built-in user type. Flags
  /// include "BUILT_IN", "CLOUD_IAM_USER", "CLOUD_IAM_SERVICE_ACCOUNT", "CLOUD_IAM_GROUP",
  /// "CLOUD_IAM_GROUP_USER" and "CLOUD_IAM_GROUP_SERVICE_ACCOUNT" for
  /// [Postgres](https://cloud.google.com/sql/docs/postgres/admin-api/rest/v1beta4/users#sqlusertype)
  /// and [MySQL](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/users#sqlusertype).
  final Input<String>? type;

  UserArgs2({
    this.deletionPolicy,
    this.host,
    required this.instance,
    this.name,
    this.password,
    this.passwordPolicy,
    this.passwordWo,
    this.passwordWoVersion,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    map['instance'] = instance;
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
      map['passwordPolicy'] =
          Input.mapOptionalInputValue<UserPasswordPolicy, Map<String, dynamic>>(
              passwordPolicyValue, (value) => value.toMap());
    }
    final passwordWoValue = passwordWo;
    if (passwordWoValue != null) {
      map['passwordWo'] = passwordWoValue;
    }
    final passwordWoVersionValue = passwordWoVersion;
    if (passwordWoVersionValue != null) {
      map['passwordWoVersion'] = passwordWoVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory UserArgs2.fromMap(Map<String, dynamic> map) {
    return UserArgs2(
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      host: Input.asOptionalInput<String>(map['host']),
      instance: Input.asInput<String>(map['instance']),
      name: Input.asOptionalInput<String>(map['name']),
      password: Input.asOptionalInput<String>(map['password']),
      passwordPolicy:
          Input.asOptionalInput<UserPasswordPolicy>(map['passwordPolicy']),
      passwordWo: Input.asOptionalInput<String>(map['passwordWo']),
      passwordWoVersion: Input.asOptionalInput<int>(map['passwordWoVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
