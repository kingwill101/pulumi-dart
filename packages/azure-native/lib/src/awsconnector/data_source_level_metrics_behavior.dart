/// Property value
enum DataSourceLevelMetricsBehavior {
  fULLREQUESTDATASOURCEMETRICS("FULL_REQUEST_DATA_SOURCE_METRICS"),
  pERDATASOURCEMETRICS("PER_DATA_SOURCE_METRICS");

  const DataSourceLevelMetricsBehavior(this.value);
  final String value;

  static DataSourceLevelMetricsBehavior fromValue(String value) {
    for (final item in DataSourceLevelMetricsBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataSourceLevelMetricsBehavior value: $value');
  }
}

