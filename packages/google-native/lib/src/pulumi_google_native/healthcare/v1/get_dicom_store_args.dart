// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDicomStore.
class GetDicomStoreArgs {
  final Input<String> datasetId;
  final Input<String> dicomStoreId;
  final Input<String> location;
  final Input<String>? project;

  GetDicomStoreArgs({
    required this.datasetId,
    required this.dicomStoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['dicomStoreId'] = dicomStoreId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDicomStoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDicomStoreArgs(
      datasetId: Input.asInput<String>(map['datasetId']),
      dicomStoreId: Input.asInput<String>(map['dicomStoreId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
