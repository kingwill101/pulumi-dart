// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_dataset_consent_store_iam_policy_healthcare_v1beta1_args_doc}
/// Arguments for getDatasetConsentStoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_dataset_consent_store_iam_policy_healthcare_v1beta1_args_doc}
class GetDatasetConsentStoreIamPolicyHealthcareV1beta1Args {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatasetConsentStoreIamPolicyHealthcareV1beta1Args].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDatasetConsentStoreIamPolicyHealthcareV1beta1Args({
    required String consentStoreId,
    required String datasetId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
       datasetId = pulumi.Input.asInput<String>(datasetId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetDatasetConsentStoreIamPolicyHealthcareV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatasetConsentStoreIamPolicyHealthcareV1beta1Args(
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
