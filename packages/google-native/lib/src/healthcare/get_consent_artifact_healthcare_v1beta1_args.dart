// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_consent_artifact_healthcare_v1beta1_args_doc}
/// Arguments for getConsentArtifact.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_consent_artifact_healthcare_v1beta1_args_doc}
class GetConsentArtifactHealthcareV1beta1Args {
  final pulumi.Input<String> consentArtifactId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentArtifactHealthcareV1beta1Args].
  /// [consentArtifactId] Required.
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConsentArtifactHealthcareV1beta1Args({
    required String consentArtifactId,
    required String consentStoreId,
    required String datasetId,
    required String location,
    String? project,
  })  : consentArtifactId = pulumi.Input.asInput<String>(consentArtifactId),
        consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
        datasetId = pulumi.Input.asInput<String>(datasetId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentArtifactId'] = consentArtifactId;
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConsentArtifactHealthcareV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetConsentArtifactHealthcareV1beta1Args(
      consentArtifactId: map['consentArtifactId'] as String,
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
