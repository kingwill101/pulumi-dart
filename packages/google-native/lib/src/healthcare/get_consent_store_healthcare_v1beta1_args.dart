// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_consent_store_healthcare_v1beta1_args_doc}
/// Arguments for getConsentStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_consent_store_healthcare_v1beta1_args_doc}
class GetConsentStoreHealthcareV1beta1Args {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentStoreHealthcareV1beta1Args].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConsentStoreHealthcareV1beta1Args({
    required String consentStoreId,
    required String datasetId,
    required String location,
    String? project,
  }) :
      consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConsentStoreHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConsentStoreHealthcareV1beta1Args(
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

