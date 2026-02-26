// ignore_for_file: unused_element, unnecessary_cast

class ClusterResourceUsageExportConfigBigqueryDestination {
  /// The ID of a BigQuery Dataset.
  final String datasetId;

  ClusterResourceUsageExportConfigBigqueryDestination({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    return map;
  }

  factory ClusterResourceUsageExportConfigBigqueryDestination.fromMap(
      Map<String, dynamic> map) {
    return ClusterResourceUsageExportConfigBigqueryDestination(
      datasetId: map['datasetId'] as String,
    );
  }
}
