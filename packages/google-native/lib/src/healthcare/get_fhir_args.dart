// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_fhir_args_doc}
/// Arguments for getFhir.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_fhir_args_doc}
class GetFhirArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> fhirId;
  final pulumi.Input<String> fhirId1;
  final pulumi.Input<String> fhirStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFhirArgs].
  /// [datasetId] Required.
  /// [fhirId] Required.
  /// [fhirId1] Required.
  /// [fhirStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFhirArgs({
    required String datasetId,
    required String fhirId,
    required String fhirId1,
    required String fhirStoreId,
    required String location,
    String? project,
  })  : datasetId = pulumi.Input.asInput<String>(datasetId),
        fhirId = pulumi.Input.asInput<String>(fhirId),
        fhirId1 = pulumi.Input.asInput<String>(fhirId1),
        fhirStoreId = pulumi.Input.asInput<String>(fhirStoreId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['fhirId'] = fhirId;
    map['fhirId1'] = fhirId1;
    map['fhirStoreId'] = fhirStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFhirArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirArgs(
      datasetId: map['datasetId'] as String,
      fhirId: map['fhirId'] as String,
      fhirId1: map['fhirId1'] as String,
      fhirStoreId: map['fhirStoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
