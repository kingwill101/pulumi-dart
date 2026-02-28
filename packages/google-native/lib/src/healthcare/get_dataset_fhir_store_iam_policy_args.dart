// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_dataset_fhir_store_iam_policy_args_doc}
/// Arguments for getDatasetFhirStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_dataset_fhir_store_iam_policy_args_doc}
class GetDatasetFhirStoreIamPolicyArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetFhirStoreIamPolicyArgs].
  /// [datasetId] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDatasetFhirStoreIamPolicyArgs({
    required String datasetId,
    required String fhirStoreId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : datasetId = pulumi.Input.asInput<String>(datasetId),
        fhirStoreId = pulumi.Input.asInput<String>(fhirStoreId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['fhirStoreId'] = fhirStoreId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatasetFhirStoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatasetFhirStoreIamPolicyArgs(
      datasetId: map['datasetId'] as String,
      fhirStoreId: map['fhirStoreId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
