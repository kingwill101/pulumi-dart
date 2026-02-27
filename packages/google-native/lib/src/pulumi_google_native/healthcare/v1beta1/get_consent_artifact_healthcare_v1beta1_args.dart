// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConsentArtifact.
class GetConsentArtifactHealthcareV1beta1Args {
  final pulumi.Input<String> consentArtifactId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConsentArtifactHealthcareV1beta1Args({
    required this.consentArtifactId,
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

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
      consentArtifactId: pulumi.Input.asInput<String>(map['consentArtifactId']),
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
