// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_cells_filter_table_data.dart';
import 'data_cells_filter_timeouts.dart';

/// Input properties used for looking up and filtering DataCellsFilter resources.
class DataCellsFilterState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Information about the data cells filter. See Table Data below for details.
  final pulumi.Input<DataCellsFilterTableData>? tableData;
  final pulumi.Input<DataCellsFilterTimeouts>? timeouts;

  /// Creates a new [DataCellsFilterState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableData] Information about the data cells filter. See Table Data below for details.
  /// [timeouts] Optional.
  DataCellsFilterState({
    pulumi.Output<String>? region,
    pulumi.Output<DataCellsFilterTableData>? tableData,
    pulumi.Output<DataCellsFilterTimeouts>? timeouts,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      tableData = pulumi.Input.asOptionalInput<DataCellsFilterTableData>(tableData),
      timeouts = pulumi.Input.asOptionalInput<DataCellsFilterTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tableData': ?pulumi.Input.mapOptionalInputValue<DataCellsFilterTableData, Map<String, dynamic>>(tableData, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DataCellsFilterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DataCellsFilterState.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tableData: map['tableData'] == null ? null : pulumi.Output.create<DataCellsFilterTableData>(DataCellsFilterTableData.fromMap((map['tableData'] as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DataCellsFilterTimeouts>(DataCellsFilterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

