import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_cells_filter_table_data/data_cells_filter_table_data.dart';
import '../data_cells_filter_timeouts/data_cells_filter_timeouts.dart';
import 'data_cells_filter_args.dart';

/// Resource for managing an AWS Lake Formation Data Cells Filter.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Filter with Excluded Columns Only (No Row Filter)
///
/// When excluding columns without a row filter, you must include `all_rows_wildcard {}`:
///
///
///
/// ### Filter with Row Filter and Excluded Columns
///
///
///
/// ### Filter with Row Filter Only (All Columns Included)
///
/// To include all columns with a row filter, set `excluded_column_names` to an empty list:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation Data Cells Filter using the `database_name`, `name`, `table_catalog_id`, and `table_name` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/dataCellsFilter:DataCellsFilter example database_name,name,table_catalog_id,table_name
/// ```
class DataCellsFilter extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Information about the data cells filter. See Table Data below for details.
  late final pulumi.Output<DataCellsFilterTableData> tableData;
  late final pulumi.Output<DataCellsFilterTimeouts?> timeouts;

  DataCellsFilter(
    String name, {
    DataCellsFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataCellsFilter:DataCellsFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.tableData = registerOutput<DataCellsFilterTableData>('tableData');
    this.timeouts = registerOutput<DataCellsFilterTimeouts?>('timeouts');
  }
}
