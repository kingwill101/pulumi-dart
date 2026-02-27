// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConsent.
class GetConsentHealthcareV1beta1Args {
  final pulumi.Input<String> consentId;
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetConsentHealthcareV1beta1Args({
    required this.consentId,
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

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
      consentId: pulumi.Input.asInput<String>(map['consentId']),
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
