// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for User.
class UserArgs {
  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final Input<String> cluster;

  /// List of database roles this database user has.
  final Input<List<String>>? databaseRoles;

  /// Password for this database user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String>? password;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Password for this database user.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> or <span pulumi-lang-nodejs="`passwordWo`" pulumi-lang-dotnet="`PasswordWo`" pulumi-lang-go="`passwordWo`" pulumi-lang-python="`password_wo`" pulumi-lang-yaml="`passwordWo`" pulumi-lang-java="`passwordWo`">`password_wo`</span> can only be set.
  final Input<String>? passwordWo;

  /// Triggers update of <span pulumi-lang-nodejs="`passwordWo`" pulumi-lang-dotnet="`PasswordWo`" pulumi-lang-go="`passwordWo`" pulumi-lang-python="`password_wo`" pulumi-lang-yaml="`passwordWo`" pulumi-lang-java="`passwordWo`">`password_wo`</span> write-only. Increment this value when an update to <span pulumi-lang-nodejs="`passwordWo`" pulumi-lang-dotnet="`PasswordWo`" pulumi-lang-go="`passwordWo`" pulumi-lang-python="`password_wo`" pulumi-lang-yaml="`passwordWo`" pulumi-lang-java="`passwordWo`">`password_wo`</span> is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final Input<String>? passwordWoVersion;

  /// The database role name of the user.
  final Input<String> userId;

  /// The type of this user.
  /// Possible values are: `ALLOYDB_BUILT_IN`, `ALLOYDB_IAM_USER`.
  final Input<String> userType;

  UserArgs({
    required this.cluster,
    this.databaseRoles,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    required this.userId,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    final databaseRolesValue = databaseRoles;
    if (databaseRolesValue != null) {
      map['databaseRoles'] = databaseRolesValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final passwordWoValue = passwordWo;
    if (passwordWoValue != null) {
      map['passwordWo'] = passwordWoValue;
    }
    final passwordWoVersionValue = passwordWoVersion;
    if (passwordWoVersionValue != null) {
      map['passwordWoVersion'] = passwordWoVersionValue;
    }
    map['userId'] = userId;
    map['userType'] = userType;
    return map;
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      cluster: Input.asInput<String>(map['cluster']),
      databaseRoles: Input.asOptionalInput<List<String>>(map['databaseRoles']),
      password: Input.asOptionalInput<String>(map['password']),
      passwordWo: Input.asOptionalInput<String>(map['passwordWo']),
      passwordWoVersion:
          Input.asOptionalInput<String>(map['passwordWoVersion']),
      userId: Input.asInput<String>(map['userId']),
      userType: Input.asInput<String>(map['userType']),
    );
  }
}
