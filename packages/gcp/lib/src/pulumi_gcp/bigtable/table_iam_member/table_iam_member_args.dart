// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_iam_member_condition/table_iam_member_condition.dart';

/// The set of arguments for TableIamMember.
class TableIamMemberArgs {
  final Input<TableIamMemberCondition>? condition;

  /// The name or relative resource id of the instance that owns the table.
  final Input<String> instanceName;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The project in which the table belongs. If it
  /// is not provided, this provider will use the provider default.
  final Input<String>? project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.bigtable.TableIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.TableIamBinding`" pulumi-lang-go="`bigtable.TableIamBinding`" pulumi-lang-python="`bigtable.TableIamBinding`" pulumi-lang-yaml="`gcp.bigtable.TableIamBinding`" pulumi-lang-java="`gcp.bigtable.TableIamBinding`">`gcp.bigtable.TableIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// <span pulumi-lang-nodejs="`gcp.bigtable.TableIamPolicy`" pulumi-lang-dotnet="`gcp.bigtable.TableIamPolicy`" pulumi-lang-go="`bigtable.TableIamPolicy`" pulumi-lang-python="`bigtable.TableIamPolicy`" pulumi-lang-yaml="`gcp.bigtable.TableIamPolicy`" pulumi-lang-java="`gcp.bigtable.TableIamPolicy`">`gcp.bigtable.TableIamPolicy`</span> only:
  final Input<String> role;

  /// The name or relative resource id of the table to manage IAM policies for.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.bigtable.TableIamMember`" pulumi-lang-dotnet="`gcp.bigtable.TableIamMember`" pulumi-lang-go="`bigtable.TableIamMember`" pulumi-lang-python="`bigtable.TableIamMember`" pulumi-lang-yaml="`gcp.bigtable.TableIamMember`" pulumi-lang-java="`gcp.bigtable.TableIamMember`">`gcp.bigtable.TableIamMember`</span> or <span pulumi-lang-nodejs="`gcp.bigtable.TableIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.TableIamBinding`" pulumi-lang-go="`bigtable.TableIamBinding`" pulumi-lang-python="`bigtable.TableIamBinding`" pulumi-lang-yaml="`gcp.bigtable.TableIamBinding`" pulumi-lang-java="`gcp.bigtable.TableIamBinding`">`gcp.bigtable.TableIamBinding`</span>:
  final Input<String> table;

  TableIamMemberArgs({
    this.condition,
    required this.instanceName,
    required this.member,
    this.project,
    required this.role,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<TableIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['instanceName'] = instanceName;
    map['member'] = member;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    map['table'] = table;
    return map;
  }

  factory TableIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return TableIamMemberArgs(
      condition:
          Input.asOptionalInput<TableIamMemberCondition>(map['condition']),
      instanceName: Input.asInput<String>(map['instanceName']),
      member: Input.asInput<String>(map['member']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
      table: Input.asInput<String>(map['table']),
    );
  }
}
