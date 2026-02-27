// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_iam_binding_condition/table_iam_binding_condition.dart';

/// The set of arguments for TableIamBinding.
class TableIamBindingArgs {
  final pulumi.Input<TableIamBindingCondition>? condition;

  /// The name or relative resource id of the instance that owns the table.
  final pulumi.Input<String> instanceName;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The project in which the table belongs. If it
  /// is not provided, this provider will use the provider default.
  final pulumi.Input<String>? project;

  /// The role that should be applied. Only one
  /// `gcp.bigtable.TableIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.bigtable.TableIamPolicy` only:
  final pulumi.Input<String> role;

  /// The name or relative resource id of the table to manage IAM policies for.
  ///
  /// For `gcp.bigtable.TableIamMember` or `gcp.bigtable.TableIamBinding`:
  final pulumi.Input<String> table;

  TableIamBindingArgs({
    this.condition,
    required this.instanceName,
    required this.members,
    this.project,
    required this.role,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          TableIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['instanceName'] = instanceName;
    map['members'] = members;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    map['table'] = table;
    return map;
  }

  factory TableIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return TableIamBindingArgs(
      condition: pulumi.Input.asOptionalInput<TableIamBindingCondition>(
          map['condition']),
      instanceName: pulumi.Input.asInput<String>(map['instanceName']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
      table: pulumi.Input.asInput<String>(map['table']),
    );
  }
}
