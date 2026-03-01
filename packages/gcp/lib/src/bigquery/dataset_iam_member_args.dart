// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_iam_member_condition.dart';

/// {@template pulumi_bigquery_dataset_iam_member_dataset_iam_member_args_doc}
/// The set of arguments for DatasetIamMember.
/// {@endtemplate}
/// {@macro pulumi_bigquery_dataset_iam_member_dataset_iam_member_args_doc}
class DatasetIamMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<DatasetIamMemberCondition>? condition;

  /// The dataset ID.
  final pulumi.Input<String> datasetId;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **iamMember:{principal}**: Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group. This is used for example for workload/workforce federated identities (principal, principalSet).
  /// * **projectOwners**: A special identifier that represents the Owners of the project of the dataset.
  /// * **projectReaders**: A special identifier that represents the Viewers of the project of the dataset.
  /// * **projectWriters**: A special identifier that represents the Editors of the project of the dataset.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  final pulumi.Input<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The role that should be applied. Only one
  /// `gcp.bigquery.DatasetIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [DatasetIamMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [datasetId] The dataset ID.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  DatasetIamMemberArgs({
    DatasetIamMemberCondition? condition,
    required String datasetId,
    required String member,
    String? project,
    required String role,
  }) : condition = pulumi.Input.asOptionalInput<DatasetIamMemberCondition>(
         condition,
       ),
       datasetId = pulumi.Input.asInput<String>(datasetId),
       member = pulumi.Input.asInput<String>(member),
       project = pulumi.Input.asOptionalInput<String>(project),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetIamMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'datasetId': datasetId,
      'member': member,
      'project': ?project,
      'role': role,
    };
  }

  factory DatasetIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return DatasetIamMemberArgs(
      condition: map['condition'] == null
          ? null
          : DatasetIamMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      datasetId: map['datasetId'] as String,
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
