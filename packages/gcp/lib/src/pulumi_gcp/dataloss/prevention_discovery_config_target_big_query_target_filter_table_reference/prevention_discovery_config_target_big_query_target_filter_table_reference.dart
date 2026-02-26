// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference {
  /// Dataset ID of the table.
  final String datasetId;

  /// Name of the table.
  final String tableId;

  PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference({
    required this.datasetId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['tableId'] = tableId;
    return map;
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference(
      datasetId: map['datasetId'] as String,
      tableId: map['tableId'] as String,
    );
  }
}
