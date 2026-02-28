// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_iam_binding_condition.dart';

/// {@template pulumi_healthcare_dicom_store_iam_binding_dicom_store_iam_binding_args_doc}
/// The set of arguments for DicomStoreIamBinding.
/// {@endtemplate}
/// {@macro pulumi_healthcare_dicom_store_iam_binding_dicom_store_iam_binding_args_doc}
class DicomStoreIamBindingArgs {
  final pulumi.Input<DicomStoreIamBindingCondition>? condition;

  /// The DICOM store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{dicom_store_name}` or
  /// `{location_name}/{dataset_name}/{dicom_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> dicomStoreId;

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
  /// `gcp.healthcare.DicomStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [DicomStoreIamBindingArgs].
  /// [condition] Optional.
  /// [dicomStoreId] The DICOM store ID, in the form
  /// [members] Identities that will be granted the privilege in `role`.
  /// [role] The role that should be applied. Only one
  DicomStoreIamBindingArgs({
    DicomStoreIamBindingCondition? condition,
    required String dicomStoreId,
    required List<String> members,
    required String role,
  })  : condition = pulumi.Input.asOptionalInput<DicomStoreIamBindingCondition>(
            condition),
        dicomStoreId = pulumi.Input.asInput<String>(dicomStoreId),
        members = pulumi.Input.asInput<List<String>>(members),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          DicomStoreIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['dicomStoreId'] = dicomStoreId;
    map['members'] = members;
    map['role'] = role;
    return map;
  }

  factory DicomStoreIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return DicomStoreIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : DicomStoreIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      dicomStoreId: map['dicomStoreId'] as String,
      members: (map['members'] as List).cast<String>(),
      role: map['role'] as String,
    );
  }
}
