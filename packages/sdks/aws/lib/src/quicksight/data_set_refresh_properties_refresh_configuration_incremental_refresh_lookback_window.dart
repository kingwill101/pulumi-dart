// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow {
  /// The name of the lookback window column.
  final pulumi.Input<String> columnName;
  /// The lookback window column size.
  final pulumi.Input<int> size;
  /// The size unit that is used for the lookback window column. Valid values for this structure are `HOUR`, `DAY`, and `WEEK`.
  final pulumi.Input<String> sizeUnit;

  /// Creates a new [DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow].
  /// [columnName] The name of the lookback window column.
  /// [size] The lookback window column size.
  /// [sizeUnit] The size unit that is used for the lookback window column. Valid values for this structure are `HOUR`, `DAY`, and `WEEK`.
  const DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow({
    required this.columnName,
    required this.size,
    required this.sizeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'size': size,
      'sizeUnit': sizeUnit,
    };
  }

  factory DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow.fromMap(Map<String, dynamic> map) {
    return DataSetRefreshPropertiesRefreshConfigurationIncrementalRefreshLookbackWindow(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      sizeUnit: pulumi.Input.fromValue(map['sizeUnit'] as String),
    );
  }
}

