// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fhir_store_iam_member_condition/fhir_store_iam_member_condition.dart';

/// The set of arguments for FhirStoreIamMember.
class FhirStoreIamMemberArgs {
  final Input<FhirStoreIamMemberCondition>? condition;

  /// The FHIR store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{fhir_store_name}` or
  /// `{location_name}/{dataset_name}/{fhir_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final Input<String> fhirStoreId;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<String> member;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.healthcare.FhirStoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.FhirStoreIamBinding`" pulumi-lang-go="`healthcare.FhirStoreIamBinding`" pulumi-lang-python="`healthcare.FhirStoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.FhirStoreIamBinding`" pulumi-lang-java="`gcp.healthcare.FhirStoreIamBinding`">`gcp.healthcare.FhirStoreIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  FhirStoreIamMemberArgs({
    this.condition,
    required this.fhirStoreId,
    required this.member,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          FhirStoreIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['fhirStoreId'] = fhirStoreId;
    map['member'] = member;
    map['role'] = role;
    return map;
  }

  factory FhirStoreIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return FhirStoreIamMemberArgs(
      condition:
          Input.asOptionalInput<FhirStoreIamMemberCondition>(map['condition']),
      fhirStoreId: Input.asInput<String>(map['fhirStoreId']),
      member: Input.asInput<String>(map['member']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
