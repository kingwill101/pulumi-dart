// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_template.dart';

/// Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.
class SourceHierarchyDatasets {
  /// The dataset template to use for dynamic dataset creation.
  final DatasetTemplate? datasetTemplate;

  /// Creates a new [SourceHierarchyDatasets].
  /// [datasetTemplate] The dataset template to use for dynamic dataset creation.
  SourceHierarchyDatasets({this.datasetTemplate});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetTemplate': ?datasetTemplate == null
          ? null
          : datasetTemplate!.toMap(),
    };
  }

  factory SourceHierarchyDatasets.fromMap(Map<String, dynamic> map) {
    return SourceHierarchyDatasets(
      datasetTemplate: map['datasetTemplate'] == null
          ? null
          : DatasetTemplate.fromMap(
              (map['datasetTemplate'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
