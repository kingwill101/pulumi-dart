/// Property value
enum DataSourceLevelMetricsBehavior {
  fULLREQUESTDATASOURCEMETRICS("FULL_REQUEST_DATA_SOURCE_METRICS"),
  pERDATASOURCEMETRICS("PER_DATA_SOURCE_METRICS");

  const DataSourceLevelMetricsBehavior(this.wireValue);
  final String wireValue;

  static DataSourceLevelMetricsBehavior fromValue(String value) {
    for (final item in DataSourceLevelMetricsBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSourceLevelMetricsBehavior value: $value');
  }
}
