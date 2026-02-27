// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dicom_store_iam_member_condition/dicom_store_iam_member_condition.dart';

/// The set of arguments for DicomStoreIamMember.
class DicomStoreIamMemberArgs {
  final pulumi.Input<DicomStoreIamMemberCondition>? condition;

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
  final pulumi.Input<String> member;

  /// The role that should be applied. Only one
  /// `gcp.healthcare.DicomStoreIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  DicomStoreIamMemberArgs({
    this.condition,
    required this.dicomStoreId,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          DicomStoreIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['dicomStoreId'] = dicomStoreId;
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory DicomStoreIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return DicomStoreIamMemberArgs(
      condition: pulumi.Input.asOptionalInput<DicomStoreIamMemberCondition>(
          map['condition']),
      dicomStoreId: pulumi.Input.asInput<String>(map['dicomStoreId']),
      member: pulumi.Input.asInput<String>(map['member']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
