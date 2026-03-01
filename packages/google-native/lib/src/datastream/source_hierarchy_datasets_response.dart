// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_template_response.dart';

/// Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.
class SourceHierarchyDatasetsResponse {
  /// The dataset template to use for dynamic dataset creation.
  final DatasetTemplateResponse datasetTemplate;

  /// Creates a new [SourceHierarchyDatasetsResponse].
  /// [datasetTemplate] The dataset template to use for dynamic dataset creation.
  SourceHierarchyDatasetsResponse({required this.datasetTemplate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datasetTemplate': datasetTemplate.toMap()};
  }

  factory SourceHierarchyDatasetsResponse.fromMap(Map<String, dynamic> map) {
    return SourceHierarchyDatasetsResponse(
      datasetTemplate: DatasetTemplateResponse.fromMap(
        (map['datasetTemplate'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
