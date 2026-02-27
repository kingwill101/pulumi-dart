// ignore_for_file: unused_element, unnecessary_cast

class ListingBigqueryDatasetSelectedResource {
  /// Format: For routine: projects/{projectId}/datasets/{datasetId}/routines/{routineId} Example:"projects/test_project/datasets/test_dataset/routines/test_routine"
  ///
  /// <a name="nested_bigquery_dataset_effective_replicas"></a>The `effective_replicas` block contains:
  final String? routine;

  /// Format: For table: projects/{projectId}/datasets/{datasetId}/tables/{tableId} Example:"projects/test_project/datasets/test_dataset/tables/test_table"
  final String? table;

  ListingBigqueryDatasetSelectedResource({
    this.routine,
    this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final routineValue = routine;
    if (routineValue != null) {
      map['routine'] = routineValue;
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = tableValue;
    }
    return map;
  }

  factory ListingBigqueryDatasetSelectedResource.fromMap(
      Map<String, dynamic> map) {
    return ListingBigqueryDatasetSelectedResource(
      routine: map['routine'] == null ? null : map['routine'] as String,
      table: map['table'] == null ? null : map['table'] as String,
    );
  }
}
