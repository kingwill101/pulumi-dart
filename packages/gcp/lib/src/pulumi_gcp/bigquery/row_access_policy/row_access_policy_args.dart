// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RowAccessPolicy.
class RowAccessPolicyArgs {
  /// The ID of the dataset containing this row access policy.
  final pulumi.Input<String> datasetId;

  /// A SQL boolean expression that represents the rows defined by this row
  /// access policy, similar to the boolean expression in a WHERE clause of a
  /// SELECT query on a table.
  /// References to other tables, routines, and temporary functions are not
  /// supported.
  /// Examples: region="EU"
  /// date_field = CAST('2019-9-27' as DATE)
  /// nullable_field is not NULL
  /// numeric_field BETWEEN 1.0 AND 5.0
  final pulumi.Input<String> filterPredicate;

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
  final pulumi.Input<List<String>>? grantees;

  /// The ID of the row access policy. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 256 characters.
  final pulumi.Input<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID of the table containing this row access policy.
  final pulumi.Input<String> tableId;

  RowAccessPolicyArgs({
    required this.datasetId,
    required this.filterPredicate,
    this.grantees,
    required this.policyId,
    this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['filterPredicate'] = filterPredicate;
    final granteesValue = grantees;
    if (granteesValue != null) {
      map['grantees'] = granteesValue;
    }
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tableId'] = tableId;
    return map;
  }

  factory RowAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RowAccessPolicyArgs(
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      filterPredicate: pulumi.Input.asInput<String>(map['filterPredicate']),
      grantees: pulumi.Input.asOptionalInput<List<String>>(map['grantees']),
      policyId: pulumi.Input.asInput<String>(map['policyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tableId: pulumi.Input.asInput<String>(map['tableId']),
    );
  }
}
