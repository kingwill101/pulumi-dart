// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_consent_healthcare_v1beta1_args_doc}
/// Arguments for getConsent.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_consent_healthcare_v1beta1_args_doc}
class GetConsentHealthcareV1beta1Args {
  final pulumi.Input<String> consentId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentHealthcareV1beta1Args].
  /// [consentId] Required.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConsentHealthcareV1beta1Args({
    required String consentId,
    required String consentStoreId,
    required String datasetId,
    required String location,
    String? project,
  })  : consentId = pulumi.Input.asInput<String>(consentId),
        consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
        datasetId = pulumi.Input.asInput<String>(datasetId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentId'] = consentId;
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConsentHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConsentHealthcareV1beta1Args(
      consentId: map['consentId'] as String,
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
