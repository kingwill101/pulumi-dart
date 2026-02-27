import 'package:pulumi/pulumi.dart';
import 'row_access_policy_args.dart';

/// Represents access on a subset of rows on the specified table, defined by its filter predicate. Access to the subset of rows is controlled by its IAM policy.
///
///
///
/// ## Example Usage
///
/// ### Bigquery Row Access Policy Basic
///
///
///
///
/// ## Import
///
/// RowAccessPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}/rowAccessPolicies/{{policy_id}}`
///
/// * `{{project}}/{{dataset_id}}/{{table_id}}/{{policy_id}}`
///
/// * `{{dataset_id}}/{{table_id}}/{{policy_id}}`
///
/// When using the `pulumi import` command, RowAccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default projects/{{project}}/datasets/{{dataset_id}}/tables/{{table_id}}/rowAccessPolicies/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default {{project}}/{{dataset_id}}/{{table_id}}/{{policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/rowAccessPolicy:RowAccessPolicy default {{dataset_id}}/{{table_id}}/{{policy_id}}
/// ```
class RowAccessPolicy extends CustomResource {
  /// The time when this row access policy was created, in milliseconds since
  /// the epoch.
  late final Output<String> creationTime;

  /// The ID of the dataset containing this row access policy.
  late final Output<String> datasetId;

  /// A SQL boolean expression that represents the rows defined by this row
  /// access policy, similar to the boolean expression in a WHERE clause of a
  /// SELECT query on a table.
  /// References to other tables, routines, and temporary functions are not
  /// supported.
  /// Examples: region="EU"
  /// date_field = CAST('2019-9-27' as DATE)
  /// nullable_field is not NULL
  /// numeric_field BETWEEN 1.0 AND 5.0
  late final Output<String> filterPredicate;

  /// Input only. The optional list of iam_member users or groups that specifies the initial
  /// members that the row-level access policy should be created with.
  /// grantees types:
  /// - "user:alice@example.com": An email address that represents a specific
  /// Google account.
  /// - "serviceAccount:my-other-app@appspot.gserviceaccount.com": An email
  /// address that represents a service account.
  /// - "group:admins@example.com": An email address that represents a Google
  /// group.
  /// - "domain:example.com":The Google Workspace domain (primary) that
  /// represents all the users of that domain.
  /// - "allAuthenticatedUsers": A special identifier that represents all service
  /// accounts and all users on the internet who have authenticated with a Google
  /// Account. This identifier includes accounts that aren't connected to a
  /// Google Workspace or Cloud Identity domain, such as personal Gmail accounts.
  /// Users who aren't authenticated, such as anonymous visitors, aren't
  /// included.
  /// - "allUsers":A special identifier that represents anyone who is on
  /// the internet, including authenticated and unauthenticated users. Because
  /// BigQuery requires authentication before a user can access the service,
  /// allUsers includes only authenticated users.
  late final Output<List<String>?> grantees;

  /// The time when this row access policy was last modified, in milliseconds
  /// since the epoch.
  late final Output<String> lastModifiedTime;

  /// The ID of the row access policy. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 256 characters.
  late final Output<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The ID of the table containing this row access policy.
  late final Output<String> tableId;

  RowAccessPolicy(
    String name, {
    RowAccessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/rowAccessPolicy:RowAccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.datasetId = registerOutput<String>('datasetId');
    this.filterPredicate = registerOutput<String>('filterPredicate');
    this.grantees = registerOutput<List<String>?>('grantees');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.policyId = registerOutput<String>('policyId');
    this.project = registerOutput<String>('project');
    this.tableId = registerOutput<String>('tableId');
  }
}
