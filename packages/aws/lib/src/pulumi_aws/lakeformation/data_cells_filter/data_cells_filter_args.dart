// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_cells_filter_table_data/data_cells_filter_table_data.dart';
import '../data_cells_filter_timeouts/data_cells_filter_timeouts.dart';

/// The set of arguments for DataCellsFilter.
class DataCellsFilterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Information about the data cells filter. See Table Data below for details.
  final pulumi.Input<DataCellsFilterTableData> tableData;
  final pulumi.Input<DataCellsFilterTimeouts>? timeouts;

  DataCellsFilterArgs({
    this.region,
    required this.tableData,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableData'] = pulumi.Input.mapInputValue<DataCellsFilterTableData,
        Map<String, dynamic>>(tableData, (value) => value.toMap());
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DataCellsFilterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DataCellsFilterArgs.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tableData:
          pulumi.Input.asInput<DataCellsFilterTableData>(map['tableData']),
      timeouts: pulumi.Input.asOptionalInput<DataCellsFilterTimeouts>(
          map['timeouts']),
    );
  }
}
