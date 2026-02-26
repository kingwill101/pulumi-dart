// ignore_for_file: unused_element, unnecessary_cast

class DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow {
  /// The name of the lookback window column.
  final String columnName;

  /// The lookback window column size.
  final int size;

  /// The size unit that is used for the lookback window column. Valid values for this structure are `HOUR`, `DAY`, and `WEEK`.
  final String sizeUnit;

  DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow({
    required this.columnName,
    required this.size,
    required this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['size'] = size;
    map['sizeUnit'] = sizeUnit;
    return map;
  }

  factory DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow.fromMap(
      Map<String, dynamic> map) {
    return DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow(
      columnName: map['columnName'] as String,
      size: map['size'] as int,
      sizeUnit: map['sizeUnit'] as String,
    );
  }
}
