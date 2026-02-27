import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_creds_resource_identity/user_creds_resource_identity.dart';
import 'user_creds_args.dart';

/// User credentials for a Cloud Firestore with MongoDB compatibility database.
/// The resource is owned by the database and is deleted along with the database.
///
///
/// To get more information about UserCreds, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.userCreds)
/// * How-to Guides
/// * [Authenticate and connect to a database](https://cloud.google.com/firestore/mongodb-compatibility/docs/connect)
///
///
///
/// ## Example Usage
///
/// ### Firestore User Creds Basic
///
///
///
/// ### Firestore User Creds With Secret Manager
///
///
///
///
/// ## Import
///
/// UserCreds can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/databases/{{database}}/userCreds/{{name}}`
///
/// * `{{project}}/{{database}}/{{name}}`
///
/// * `{{database}}/{{name}}`
///
/// When using the `pulumi import` command, UserCreds can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/userCreds:UserCreds default projects/{{project}}/databases/{{database}}/userCreds/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/userCreds:UserCreds default {{project}}/{{database}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/userCreds:UserCreds default {{database}}/{{name}}
/// ```
class UserCreds extends pulumi.CustomResource {
  /// The timestamp at which these user creds were created.
  late final pulumi.Output<String> createTime;

  /// The Firestore database ID.
  late final pulumi.Output<String> database;

  /// The ID to use for the user creds, which will become the final component
  /// of the user cred's resource name.
  /// This value should be 4-63 characters. Valid characters are /[a-z][0-9]-/
  /// with first character a letter and the last a letter or a number. Must not
  /// be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Describes the Resource Identity principal.
  /// Structure is documented below.
  late final pulumi.Output<List<UserCredsResourceIdentity>> resourceIdentities;

  /// The plaintext server-generated password for the user creds.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> securePassword;

  /// The state of the user creds.
  late final pulumi.Output<String> state;

  /// The timestamp at which these user creds were updated.
  late final pulumi.Output<String> updateTime;

  UserCreds(
    String name, {
    UserCredsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/userCreds:UserCreds',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String>('database');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceIdentities =
        registerOutput<List<UserCredsResourceIdentity>>('resourceIdentities');
    this.securePassword = registerOutput<String>('securePassword');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
