// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFhirStoreIamPolicy.
class GetFhirStoreIamPolicyArgs {
  /// The FHIR store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{fhir_store_name}` or
  /// `{location_name}/{dataset_name}/{fhir_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  final pulumi.Input<String> fhirStoreId;

  GetFhirStoreIamPolicyArgs({
    required this.fhirStoreId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fhirStoreId'] = fhirStoreId;
    return map;
  }

  factory GetFhirStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreIamPolicyArgs(
      fhirStoreId: pulumi.Input.asInput<String>(map['fhirStoreId']),
    );
  }
}
