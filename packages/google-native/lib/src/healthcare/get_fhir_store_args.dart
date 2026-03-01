// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_fhir_store_args_doc}
/// Arguments for getFhirStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_fhir_store_args_doc}
class GetFhirStoreArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFhirStoreArgs].
  /// [datasetId] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFhirStoreArgs({
    required String datasetId,
    required String fhirStoreId,
    required String location,
    String? project,
  }) : datasetId = pulumi.Input.asInput<String>(datasetId),
       fhirStoreId = pulumi.Input.asInput<String>(fhirStoreId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'fhirStoreId': fhirStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFhirStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirStoreArgs(
      datasetId: map['datasetId'] as String,
      fhirStoreId: map['fhirStoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
