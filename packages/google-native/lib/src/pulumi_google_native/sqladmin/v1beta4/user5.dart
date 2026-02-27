import 'package:pulumi/pulumi.dart' hide Config;
import 'sql_server_user_details_response2.dart';
import 'user_args5.dart';
import 'user_password_validation_policy_response2.dart';

/// Creates a new user in a Cloud SQL instance.
class User5 extends CustomResource {
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
  late final Output<UserPasswordValidationPolicyResponse2> passwordPolicy;
  late final Output<String> project;
  late final Output<SqlServerUserDetailsResponse2> sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  late final Output<String> type;

  User5(
    String name, {
    UserArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1beta4:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dualPasswordType = registerOutput<String>('dualPasswordType');
    this.etag = registerOutput<String>('etag');
    this.host = registerOutput<String>('host');
    this.instance = registerOutput<String>('instance');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.passwordPolicy =
        registerOutput<UserPasswordValidationPolicyResponse2>('passwordPolicy');
    this.project = registerOutput<String>('project');
    this.sqlserverUserDetails =
        registerOutput<SqlServerUserDetailsResponse2>('sqlserverUserDetails');
    this.type = registerOutput<String>('type');
  }
}
