// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_consent_store_args_doc}
/// Arguments for getConsentStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_consent_store_args_doc}
class GetConsentStoreArgs {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConsentStoreArgs].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConsentStoreArgs({
    required String consentStoreId,
    required String datasetId,
    required String location,
    String? project,
  })  : consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
        datasetId = pulumi.Input.asInput<String>(datasetId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
