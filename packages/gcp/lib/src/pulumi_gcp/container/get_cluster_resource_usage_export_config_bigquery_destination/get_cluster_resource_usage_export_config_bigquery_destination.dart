// ignore_for_file: unused_element, unnecessary_cast

class GetClusterResourceUsageExportConfigBigqueryDestination {
  /// The ID of a BigQuery Dataset.
  final String datasetId;

  GetClusterResourceUsageExportConfigBigqueryDestination({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    return map;
  }

  factory GetClusterResourceUsageExportConfigBigqueryDestination.fromMap(
      Map<String, dynamic> map) {
    return GetClusterResourceUsageExportConfigBigqueryDestination(
      datasetId: map['datasetId'] as String,
    );
  }
}
