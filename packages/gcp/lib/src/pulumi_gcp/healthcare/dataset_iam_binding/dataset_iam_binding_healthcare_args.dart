// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dataset_iam_binding_condition/dataset_iam_binding_condition_healthcare.dart';

/// The set of arguments for DatasetIamBinding.
class DatasetIamBindingHealthcareArgs {
  final pulumi.Input<DatasetIamBindingConditionHealthcare>? condition;

  /// The dataset ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}` or
  /// `{location_name}/{dataset_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> datasetId;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.healthcare.DatasetIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  DatasetIamBindingHealthcareArgs({
    this.condition,
    required this.datasetId,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          DatasetIamBindingConditionHealthcare,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['datasetId'] = datasetId;
    map['members'] = members;
    map['role'] = role;
    return map;
  }

  factory DatasetIamBindingHealthcareArgs.fromMap(Map<String, dynamic> map) {
    return DatasetIamBindingHealthcareArgs(
      condition:
          pulumi.Input.asOptionalInput<DatasetIamBindingConditionHealthcare>(
              map['condition']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
