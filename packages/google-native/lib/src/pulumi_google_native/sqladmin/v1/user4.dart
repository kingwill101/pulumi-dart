import 'package:pulumi/pulumi.dart';
import 'sql_server_user_details_response.dart';
import 'user_args4.dart';
import 'user_password_validation_policy_response.dart';

/// Creates a new user in a Cloud SQL instance.
class User4 extends CustomResource {
  /// Dual password status for the user.
  late final Output<String> dualPasswordType;

  /// This field is deprecated and will be removed from a future version of the API.
  late final Output<String> etag;

  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  late final Output<String> host;
  late final Output<String> instance;

  /// This is always `sql#user`.
  late final Output<String> kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  late final Output<String> name;

  /// The password for the user.
  late final Output<String> password;

  /// User level password validation policy.
  late final Output<UserPasswordValidationPolicyResponse> passwordPolicy;
  late final Output<String> project;
  late final Output<SqlServerUserDetailsResponse> sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  late final Output<String> type;

  User4(
    String name, {
    UserArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dualPasswordType = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.host = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.password = Output.createUnknown<String>();
    this.passwordPolicy =
        Output.createUnknown<UserPasswordValidationPolicyResponse>();
    this.project = Output.createUnknown<String>();
    this.sqlserverUserDetails =
        Output.createUnknown<SqlServerUserDetailsResponse>();
    this.type = Output.createUnknown<String>();
  }
}
