import 'package:pulumi/pulumi.dart' as pulumi;
import '../database_iambinding_condition/database_iambinding_condition.dart';
import 'database_iambinding_args.dart';

/// Three different resources help you manage your IAM policy for a Spanner database. Each of these resources serves a different use case:
///
/// * `gcp.spanner.DatabaseIAMPolicy`: Authoritative. Sets the IAM policy for the database and replaces any existing policy already attached.
///
/// > **Warning:** It's entirely possibly to lock yourself out of your database using `gcp.spanner.DatabaseIAMPolicy`. Any permissions granted by default will be removed unless you include them in your config.
///
/// * `gcp.spanner.DatabaseIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the database are preserved.
/// * `gcp.spanner.DatabaseIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the database are preserved.
///
/// > **Note:** `gcp.spanner.DatabaseIAMPolicy` **cannot** be used in conjunction with `gcp.spanner.DatabaseIAMBinding` and `gcp.spanner.DatabaseIAMMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.spanner.DatabaseIAMBinding` resources **can be** used in conjunction with `gcp.spanner.DatabaseIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.spanner.DatabaseIAMPolicy
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.spanner.DatabaseIAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.spanner.DatabaseIAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.spanner.DatabaseIAMBinding
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.spanner.DatabaseIAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Spanner Database resource in question. For example:
///
/// * `{{project}}/{{instance}}/{{database}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = {{project}}/{{instance}}/{{database}}
///
/// to = google_spanner_database_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:spanner/databaseIAMBinding:DatabaseIAMBinding default {{project}}/{{instance}}/{{database}}
/// ```
class DatabaseIAMBinding extends pulumi.CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final pulumi.Output<DatabaseIAMBindingCondition?> condition;

  /// The name of the Spanner database.
  late final pulumi.Output<String> database;

  /// (Computed) The etag of the database's IAM policy.
  late final pulumi.Output<String> etag;

  /// The name of the Spanner instance the database belongs to.
  late final pulumi.Output<String> instance;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<List<String>> members;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.spanner.DatabaseIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  DatabaseIAMBinding(
    String name, {
    DatabaseIAMBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/databaseIAMBinding:DatabaseIAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<DatabaseIAMBindingCondition?>('condition');
    this.database = registerOutput<String>('database');
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
