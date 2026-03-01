// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_get_fhir_store_iam_policy_get_fhir_store_iam_policy_args_doc}
/// Arguments for getFhirStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_get_fhir_store_iam_policy_get_fhir_store_iam_policy_args_doc}
class GetFhirStoreIamPolicyArgs {
  /// The FHIR store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{fhir_store_name}` or
  /// `{location_name}/{dataset_name}/{fhir_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> fhirStoreId;

  /// Creates a new [GetFhirStoreIamPolicyArgs].
  /// [fhirStoreId] The FHIR store ID, in the form
  GetFhirStoreIamPolicyArgs({required String fhirStoreId})
    : fhirStoreId = pulumi.Input.asInput<String>(fhirStoreId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fhirStoreId': fhirStoreId};
  }

  factory GetFhirStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreIamPolicyArgs(fhirStoreId: map['fhirStoreId'] as String);
  }
}
