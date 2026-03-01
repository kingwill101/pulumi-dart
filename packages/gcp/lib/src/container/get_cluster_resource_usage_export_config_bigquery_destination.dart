// ignore_for_file: unused_element, unnecessary_cast

class GetClusterResourceUsageExportConfigBigqueryDestination {
  /// The ID of a BigQuery Dataset.
  final String datasetId;

  /// Creates a new [GetClusterResourceUsageExportConfigBigqueryDestination].
  /// [datasetId] The ID of a BigQuery Dataset.
  GetClusterResourceUsageExportConfigBigqueryDestination({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datasetId': datasetId};
  }

  factory GetClusterResourceUsageExportConfigBigqueryDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterResourceUsageExportConfigBigqueryDestination(
      datasetId: map['datasetId'] as String,
    );
  }
}
