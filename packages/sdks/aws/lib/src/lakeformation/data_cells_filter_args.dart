// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_cells_filter_table_data.dart';
import 'data_cells_filter_timeouts.dart';

/// {@template pulumi_lakeformation_data_cells_filter_data_cells_filter_args_doc}
/// The set of arguments for DataCellsFilter.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_data_cells_filter_data_cells_filter_args_doc}
class DataCellsFilterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Information about the data cells filter. See Table Data below for details.
  final pulumi.Input<DataCellsFilterTableData> tableData;
  final pulumi.Input<DataCellsFilterTimeouts>? timeouts;

  /// Creates a new [DataCellsFilterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableData] Information about the data cells filter. See Table Data below for details.
  /// [timeouts] Optional.
  DataCellsFilterArgs({
    this.region,
    required this.tableData,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tableData': pulumi.Input.mapInputValue<DataCellsFilterTableData, Map<String, dynamic>>(tableData, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DataCellsFilterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DataCellsFilterArgs.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tableData: (DataCellsFilterTableData.fromMap((map['tableData']! as Map).cast<String, dynamic>())).input(),
      timeouts: map['timeouts'] == null ? null : ((DataCellsFilterTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

