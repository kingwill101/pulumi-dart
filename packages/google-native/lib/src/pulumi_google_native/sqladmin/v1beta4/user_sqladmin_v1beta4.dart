import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_user_details_response_sqladmin_v1beta4.dart';
import 'user_password_validation_policy_response_sqladmin_v1beta4.dart';
import 'user_sqladmin_v1beta4_args.dart';

/// Creates a new user in a Cloud SQL instance.
class UserSqladminV1beta4 extends pulumi.CustomResource {
  /// Dual password status for the user.
  late final pulumi.Output<String> dualPasswordType;

  /// This field is deprecated and will be removed from a future version of the API.
  late final pulumi.Output<String> etag;

  /// Optional. The host from which the user can connect. For `insert` operations, host defaults to an empty string. For `update` operations, host is specified as part of the request URL. The host name cannot be updated after insertion. For a MySQL instance, it's required; for a PostgreSQL or SQL Server instance, it's optional.
  late final pulumi.Output<String> host;
  late final pulumi.Output<String> instance;

  /// This is always `sql#user`.
  late final pulumi.Output<String> kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already specified in the URL.
  late final pulumi.Output<String> name;

  /// The password for the user.
  late final pulumi.Output<String> password;

  /// User level password validation policy.
  late final pulumi.Output<UserPasswordValidationPolicyResponseSqladminV1beta4>
      passwordPolicy;
  late final pulumi.Output<String> project;
  late final pulumi.Output<SqlServerUserDetailsResponseSqladminV1beta4>
      sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during login. The default is the database's built-in user type.
  late final pulumi.Output<String> type;

  UserSqladminV1beta4(
    String name, {
    UserSqladminV1beta4Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1beta4:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dualPasswordType = registerOutput<String>('dualPasswordType');
    this.etag = registerOutput<String>('etag');
    this.host = registerOutput<String>('host');
    this.instance = registerOutput<String>('instance');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String>('password');
    this.passwordPolicy =
        registerOutput<UserPasswordValidationPolicyResponseSqladminV1beta4>(
            'passwordPolicy');
    this.project = registerOutput<String>('project');
    this.sqlserverUserDetails =
        registerOutput<SqlServerUserDetailsResponseSqladminV1beta4>(
            'sqlserverUserDetails');
    this.type = registerOutput<String>('type');
  }
}
