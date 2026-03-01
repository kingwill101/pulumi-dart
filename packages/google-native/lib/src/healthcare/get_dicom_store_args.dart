// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_dicom_store_args_doc}
/// Arguments for getDicomStore.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_dicom_store_args_doc}
class GetDicomStoreArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> dicomStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDicomStoreArgs].
  /// [datasetId] Required.
  /// [dicomStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDicomStoreArgs({
    required String datasetId,
    required String dicomStoreId,
    required String location,
    String? project,
  }) : datasetId = pulumi.Input.asInput<String>(datasetId),
       dicomStoreId = pulumi.Input.asInput<String>(dicomStoreId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'dicomStoreId': dicomStoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDicomStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreArgs(
      datasetId: map['datasetId'] as String,
      dicomStoreId: map['dicomStoreId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
