import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';

/// A database user in an AlloyDB cluster.
///
///
/// To get more information about User, see:
///
/// * [API documentation](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations.clusters.users/create)
/// * How-to Guides
/// * [AlloyDB](https://cloud.google.com/alloydb/docs/)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `password_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Alloydb User Builtin
///
///
///
/// ### Alloydb User Iam
///
///
///
///
/// ## Import
///
/// User can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/users/{{user_id}}`
///
/// * `{{project}}/{{location}}/{{cluster}}/{{user_id}}`
///
/// * `{{location}}/{{cluster}}/{{user_id}}`
///
/// When using the `pulumi import` command, User can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/user:User default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/users/{{user_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/user:User default {{project}}/{{location}}/{{cluster}}/{{user_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/user:User default {{location}}/{{cluster}}/{{user_id}}
/// ```
class User extends pulumi.CustomResource {
  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  late final pulumi.Output<String> cluster;

  /// List of database roles this database user has.
  late final pulumi.Output<List<String>?> databaseRoles;

  /// Name of the resource in the form of projects/{project}/locations/{location}/clusters/{cluster}/users/{user}.
  late final pulumi.Output<String> name;

  /// Password for this database user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> password;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Password for this database user.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `password` or `password_wo` can only be set.
  late final pulumi.Output<String?> passwordWo;

  /// Triggers update of `password_wo` write-only. Increment this value when an update to `password_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final pulumi.Output<String?> passwordWoVersion;

  /// The database role name of the user.
  late final pulumi.Output<String> userId;

  /// The type of this user.
  /// Possible values are: `ALLOYDB_BUILT_IN`, `ALLOYDB_IAM_USER`.
  late final pulumi.Output<String> userType;

  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:alloydb/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<String>('cluster');
    this.databaseRoles = registerOutput<List<String>?>('databaseRoles');
    this.name = registerOutput<String>('name');
    this.password = registerOutput<String?>('password');
    this.passwordWo = registerOutput<String?>('passwordWo');
    this.passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    this.userId = registerOutput<String>('userId');
    this.userType = registerOutput<String>('userType');
  }
}
