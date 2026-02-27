// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getConsentStore.
class GetConsentStoreArgs {
  final Input<String> consentStoreId;
  final Input<String> datasetId;
  final Input<String> location;
  final Input<String>? project;

  GetConsentStoreArgs({
    required this.consentStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetConsentStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetConsentStoreArgs(
      consentStoreId: Input.asInput<String>(map['consentStoreId']),
      datasetId: Input.asInput<String>(map['datasetId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
