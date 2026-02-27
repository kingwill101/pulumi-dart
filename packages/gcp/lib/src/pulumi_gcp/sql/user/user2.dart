import 'package:pulumi/pulumi.dart';
import '../user_password_policy/user_password_policy.dart';
import '../user_sql_server_user_detail/user_sql_server_user_detail.dart';
import 'user_args2.dart';

/// Creates a new Google SQL User on a Google SQL User Instance. For more information, see the [official documentation](https://cloud.google.com/sql/), or the [JSON API](https://cloud.google.com/sql/docs/admin-api/v1beta4/users).
///
///
///
/// ## Example Usage
///
/// Example creating a SQL User.
///
///
///
/// Example using [Cloud SQL IAM database authentication](https://cloud.google.com/sql/docs/mysql/authentication).
///
///
///
/// Example using [Cloud SQL IAM Group authentication](https://cloud.google.com/sql/docs/mysql/iam-authentication#iam-group-auth).
///
///
///
/// ## Ephemeral Attributes Reference
///
/// The following write-only attributes are supported:
///
/// * `password_wo` - (Optional) The password for the user. Can be updated. For Postgres
/// instances this is a Required field, unless type is set to either CLOUD_IAM_USER
/// or CLOUD_IAM_SERVICE_ACCOUNT. Don't set this field for CLOUD_IAM_USER
/// and CLOUD_IAM_SERVICE_ACCOUNT user types for any Cloud SQL instance.
/// **Note**: This property is write-only and will not be read from the API.
///
/// ## Import
///
/// SQL users for MySQL databases can be imported using the `project`, `instance`, `host` and `name`, e.g.
///
/// * `{{project_id}}/{{instance}}/{{host}}/{{name}}`
///
/// SQL users for PostgreSQL databases can be imported using the `project`, `instance` and `name`, e.g.
///
/// * `{{project_id}}/{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, NAME_HERE can be imported using one of the formats above. For example:
///
/// MySQL database
///
/// ```sh
/// $ pulumi import gcp:sql/user:User default {{project_id}}/{{instance}}/{{host}}/{{name}}
/// ```
///
/// PostgreSQL database
///
/// ```sh
/// $ pulumi import gcp:sql/user:User default {{project_id}}/{{instance}}/{{name}}
/// ```
class User2 extends CustomResource {
  /// The deletion policy for the user.
  /// Setting `ABANDON` allows the resource to be abandoned rather than deleted. This is useful
  /// for Postgres, where users cannot be deleted from the API if they have been granted SQL roles.
  ///
  /// Possible values are: `ABANDON`.
  late final Output<String?> deletionPolicy;

  /// The host the user can connect from. This is only supported
  /// for BUILT_IN users in MySQL instances. Don't set this field for PostgreSQL and SQL Server instances.
  /// Can be an IP address. Changing this forces a new resource to be created.
  late final Output<String> host;

  /// The name of the Cloud SQL instance. Changing this
  /// forces a new resource to be created.
  late final Output<String> instance;

  /// The name of the user. Changing this forces a new resource
  /// to be created.
  late final Output<String> name;

  /// The password for the user. Can be updated. For Postgres
  /// instances this is a Required field, unless type is set to either CLOUD_IAM_USER
  /// or CLOUD_IAM_SERVICE_ACCOUNT. Don't set this field for CLOUD_IAM_USER
  /// and CLOUD_IAM_SERVICE_ACCOUNT user types for any Cloud SQL instance.
  late final Output<String?> password;
  late final Output<UserPasswordPolicy?> passwordPolicy;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password for the user. Can be updated. For Postgres instances this is a Required field, unless type is set to
  /// either CLOUD_IAM_USER or CLOUD_IAM_SERVICE_ACCOUNT.
  late final Output<String?> passwordWo;

  /// The version of the password_wo. For more info see [updating write-only attributes](https://www.terraform.io/docs/providers/google/guides/using_write_only_attributes.html#updating-write-only-attributes).
  ///
  /// - - -
  late final Output<int?> passwordWoVersion;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;
  late final Output<List<UserSqlServerUserDetail>> sqlServerUserDetails;

  /// The user type. It determines the method to authenticate the
  /// user during login. The default is the database's built-in user type. Flags
  /// include "BUILT_IN", "CLOUD_IAM_USER", "CLOUD_IAM_SERVICE_ACCOUNT", "CLOUD_IAM_GROUP",
  /// "CLOUD_IAM_GROUP_USER" and "CLOUD_IAM_GROUP_SERVICE_ACCOUNT" for
  /// [Postgres](https://cloud.google.com/sql/docs/postgres/admin-api/rest/v1beta4/users#sqlusertype)
  /// and [MySQL](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/users#sqlusertype).
  late final Output<String?> type;

  User2(
    String name, {
    UserArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:sql/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.host = registerOutput<String>('host');
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.passwordPolicy = registerOutput<UserPasswordPolicy?>('passwordPolicy');
    this.passwordWo = registerOutput<String?>('passwordWo');
    this.passwordWoVersion = registerOutput<int?>('passwordWoVersion');
    this.project = registerOutput<String>('project');
    this.sqlServerUserDetails =
        registerOutput<List<UserSqlServerUserDetail>>('sqlServerUserDetails');
    this.type = registerOutput<String?>('type');
  }
}
