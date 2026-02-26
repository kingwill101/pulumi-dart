import 'package:pulumi/pulumi.dart';
import '../data_cells_filter_table_data/data_cells_filter_table_data.dart';
import '../data_cells_filter_timeouts/data_cells_filter_timeouts.dart';
import 'data_cells_filter_args.dart';

/// Resource for managing an AWS Lake Formation Data Cells Filter.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataCellsFilter("example", {tableData: {
/// databaseName: exampleAwsGlueCatalogDatabase.name,
/// name: "example",
/// tableCatalogId: current.accountId,
/// tableName: exampleAwsGlueCatalogTable.name,
/// columnNames: ["my_column"],
/// rowFilter: {
/// filterExpression: "my_column='example'",
/// },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataCellsFilter("example", table_data={
/// "database_name": example_aws_glue_catalog_database["name"],
/// "name": "example",
/// "table_catalog_id": current["accountId"],
/// "table_name": example_aws_glue_catalog_table["name"],
/// "column_names": ["my_column"],
/// "row_filter": {
/// "filter_expression": "my_column='example'",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LakeFormation.DataCellsFilter("example", new()
/// {
/// TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
/// {
/// DatabaseName = exampleAwsGlueCatalogDatabase.Name,
/// Name = "example",
/// TableCatalogId = current.AccountId,
/// TableName = exampleAwsGlueCatalogTable.Name,
/// ColumnNames = new[]
/// {
/// "my_column",
/// },
/// RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
/// {
/// FilterExpression = "my_column='example'",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataCellsFilter(ctx, "example", &lakeformation.DataCellsFilterArgs{
/// TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// DatabaseName:   pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// Name:           pulumi.String("example"),
/// TableCatalogId: pulumi.Any(current.AccountId),
/// TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// ColumnNames: pulumi.StringArray{
/// pulumi.String("my_column"),
/// },
/// RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// FilterExpression: pulumi.String("my_column='example'"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataCellsFilter;
/// import com.pulumi.aws.lakeformation.DataCellsFilterArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataRowFilterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DataCellsFilter("example", DataCellsFilterArgs.builder()
/// .tableData(DataCellsFilterTableDataArgs.builder()
/// .databaseName(exampleAwsGlueCatalogDatabase.name())
/// .name("example")
/// .tableCatalogId(current.accountId())
/// .tableName(exampleAwsGlueCatalogTable.name())
/// .columnNames("my_column")
/// .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
/// .filterExpression("my_column='example'")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lakeformation:DataCellsFilter
/// properties:
/// tableData:
/// databaseName: ${exampleAwsGlueCatalogDatabase.name}
/// name: example
/// tableCatalogId: ${current.accountId}
/// tableName: ${exampleAwsGlueCatalogTable.name}
/// columnNames:
/// - my_column
/// rowFilter:
/// filterExpression: my_column='example'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter with Excluded Columns Only (No Row Filter)
///
/// When excluding columns without a row filter, you must include <span pulumi-lang-nodejs="`allRowsWildcard " pulumi-lang-dotnet="`AllRowsWildcard " pulumi-lang-go="`allRowsWildcard " pulumi-lang-python="`all_rows_wildcard " pulumi-lang-yaml="`allRowsWildcard " pulumi-lang-java="`allRowsWildcard ">`all_rows_wildcard </span>{}`:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const excludedColumns = new aws.lakeformation.DataCellsFilter("excluded_columns", {tableData: {
/// databaseName: example.name,
/// name: "exclude-pii",
/// tableCatalogId: current.accountId,
/// tableName: exampleAwsGlueCatalogTable.name,
/// columnWildcard: {
/// excludedColumnNames: [
/// "ssn",
/// "credit_card",
/// ],
/// },
/// rowFilter: {
/// allRowsWildcard: {},
/// },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// excluded_columns = aws.lakeformation.DataCellsFilter("excluded_columns", table_data={
/// "database_name": example["name"],
/// "name": "exclude-pii",
/// "table_catalog_id": current["accountId"],
/// "table_name": example_aws_glue_catalog_table["name"],
/// "column_wildcard": {
/// "excluded_column_names": [
/// "ssn",
/// "credit_card",
/// ],
/// },
/// "row_filter": {
/// "all_rows_wildcard": {},
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var excludedColumns = new Aws.LakeFormation.DataCellsFilter("excluded_columns", new()
/// {
/// TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
/// {
/// DatabaseName = example.Name,
/// Name = "exclude-pii",
/// TableCatalogId = current.AccountId,
/// TableName = exampleAwsGlueCatalogTable.Name,
/// ColumnWildcard = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataColumnWildcardArgs
/// {
/// ExcludedColumnNames = new[]
/// {
/// "ssn",
/// "credit_card",
/// },
/// },
/// RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
/// {
/// AllRowsWildcard = null,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataCellsFilter(ctx, "excluded_columns", &lakeformation.DataCellsFilterArgs{
/// TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// DatabaseName:   pulumi.Any(example.Name),
/// Name:           pulumi.String("exclude-pii"),
/// TableCatalogId: pulumi.Any(current.AccountId),
/// TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// ColumnWildcard: &lakeformation.DataCellsFilterTableDataColumnWildcardArgs{
/// ExcludedColumnNames: pulumi.StringArray{
/// pulumi.String("ssn"),
/// pulumi.String("credit_card"),
/// },
/// },
/// RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// AllRowsWildcard: &lakeformation.DataCellsFilterTableDataRowFilterAllRowsWildcardArgs{},
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataCellsFilter;
/// import com.pulumi.aws.lakeformation.DataCellsFilterArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataColumnWildcardArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataRowFilterArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataRowFilterAllRowsWildcardArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var excludedColumns = new DataCellsFilter("excludedColumns", DataCellsFilterArgs.builder()
/// .tableData(DataCellsFilterTableDataArgs.builder()
/// .databaseName(example.name())
/// .name("exclude-pii")
/// .tableCatalogId(current.accountId())
/// .tableName(exampleAwsGlueCatalogTable.name())
/// .columnWildcard(DataCellsFilterTableDataColumnWildcardArgs.builder()
/// .excludedColumnNames(
/// "ssn",
/// "credit_card")
/// .build())
/// .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
/// .allRowsWildcard(DataCellsFilterTableDataRowFilterAllRowsWildcardArgs.builder()
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// excludedColumns:
/// type: aws:lakeformation:DataCellsFilter
/// name: excluded_columns
/// properties:
/// tableData:
/// databaseName: ${example.name}
/// name: exclude-pii
/// tableCatalogId: ${current.accountId}
/// tableName: ${exampleAwsGlueCatalogTable.name}
/// columnWildcard:
/// excludedColumnNames:
/// - ssn
/// - credit_card
/// rowFilter:
/// allRowsWildcard: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter with Row Filter and Excluded Columns
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const rowAndColumn = new aws.lakeformation.DataCellsFilter("row_and_column", {tableData: {
/// databaseName: example.name,
/// name: "marketing-filtered",
/// tableCatalogId: current.accountId,
/// tableName: exampleAwsGlueCatalogTable.name,
/// columnWildcard: {
/// excludedColumnNames: [
/// "salary",
/// "bonus",
/// ],
/// },
/// rowFilter: {
/// filterExpression: "department = 'Marketing'",
/// },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// row_and_column = aws.lakeformation.DataCellsFilter("row_and_column", table_data={
/// "database_name": example["name"],
/// "name": "marketing-filtered",
/// "table_catalog_id": current["accountId"],
/// "table_name": example_aws_glue_catalog_table["name"],
/// "column_wildcard": {
/// "excluded_column_names": [
/// "salary",
/// "bonus",
/// ],
/// },
/// "row_filter": {
/// "filter_expression": "department = 'Marketing'",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var rowAndColumn = new Aws.LakeFormation.DataCellsFilter("row_and_column", new()
/// {
/// TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
/// {
/// DatabaseName = example.Name,
/// Name = "marketing-filtered",
/// TableCatalogId = current.AccountId,
/// TableName = exampleAwsGlueCatalogTable.Name,
/// ColumnWildcard = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataColumnWildcardArgs
/// {
/// ExcludedColumnNames = new[]
/// {
/// "salary",
/// "bonus",
/// },
/// },
/// RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
/// {
/// FilterExpression = "department = 'Marketing'",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataCellsFilter(ctx, "row_and_column", &lakeformation.DataCellsFilterArgs{
/// TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// DatabaseName:   pulumi.Any(example.Name),
/// Name:           pulumi.String("marketing-filtered"),
/// TableCatalogId: pulumi.Any(current.AccountId),
/// TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// ColumnWildcard: &lakeformation.DataCellsFilterTableDataColumnWildcardArgs{
/// ExcludedColumnNames: pulumi.StringArray{
/// pulumi.String("salary"),
/// pulumi.String("bonus"),
/// },
/// },
/// RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// FilterExpression: pulumi.String("department = 'Marketing'"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataCellsFilter;
/// import com.pulumi.aws.lakeformation.DataCellsFilterArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataColumnWildcardArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataRowFilterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var rowAndColumn = new DataCellsFilter("rowAndColumn", DataCellsFilterArgs.builder()
/// .tableData(DataCellsFilterTableDataArgs.builder()
/// .databaseName(example.name())
/// .name("marketing-filtered")
/// .tableCatalogId(current.accountId())
/// .tableName(exampleAwsGlueCatalogTable.name())
/// .columnWildcard(DataCellsFilterTableDataColumnWildcardArgs.builder()
/// .excludedColumnNames(
/// "salary",
/// "bonus")
/// .build())
/// .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
/// .filterExpression("department = 'Marketing'")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// rowAndColumn:
/// type: aws:lakeformation:DataCellsFilter
/// name: row_and_column
/// properties:
/// tableData:
/// databaseName: ${example.name}
/// name: marketing-filtered
/// tableCatalogId: ${current.accountId}
/// tableName: ${exampleAwsGlueCatalogTable.name}
/// columnWildcard:
/// excludedColumnNames:
/// - salary
/// - bonus
/// rowFilter:
/// filterExpression: department = 'Marketing'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter with Row Filter Only (All Columns Included)
///
/// To include all columns with a row filter, set <span pulumi-lang-nodejs="`excludedColumnNames`" pulumi-lang-dotnet="`ExcludedColumnNames`" pulumi-lang-go="`excludedColumnNames`" pulumi-lang-python="`excluded_column_names`" pulumi-lang-yaml="`excludedColumnNames`" pulumi-lang-java="`excludedColumnNames`">`excluded_column_names`</span> to an empty list:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const rowOnly = new aws.lakeformation.DataCellsFilter("row_only", {tableData: {
/// databaseName: example.name,
/// name: "regional-filter",
/// tableCatalogId: current.accountId,
/// tableName: exampleAwsGlueCatalogTable.name,
/// columnWildcard: {
/// excludedColumnNames: [],
/// },
/// rowFilter: {
/// filterExpression: "region = 'US-WEST'",
/// },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// row_only = aws.lakeformation.DataCellsFilter("row_only", table_data={
/// "database_name": example["name"],
/// "name": "regional-filter",
/// "table_catalog_id": current["accountId"],
/// "table_name": example_aws_glue_catalog_table["name"],
/// "column_wildcard": {
/// "excluded_column_names": [],
/// },
/// "row_filter": {
/// "filter_expression": "region = 'US-WEST'",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var rowOnly = new Aws.LakeFormation.DataCellsFilter("row_only", new()
/// {
/// TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
/// {
/// DatabaseName = example.Name,
/// Name = "regional-filter",
/// TableCatalogId = current.AccountId,
/// TableName = exampleAwsGlueCatalogTable.Name,
/// ColumnWildcard = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataColumnWildcardArgs
/// {
/// ExcludedColumnNames = new() { },
/// },
/// RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
/// {
/// FilterExpression = "region = 'US-WEST'",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewDataCellsFilter(ctx, "row_only", &lakeformation.DataCellsFilterArgs{
/// TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// DatabaseName:   pulumi.Any(example.Name),
/// Name:           pulumi.String("regional-filter"),
/// TableCatalogId: pulumi.Any(current.AccountId),
/// TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// ColumnWildcard: &lakeformation.DataCellsFilterTableDataColumnWildcardArgs{
/// ExcludedColumnNames: pulumi.StringArray{},
/// },
/// RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// FilterExpression: pulumi.String("region = 'US-WEST'"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.DataCellsFilter;
/// import com.pulumi.aws.lakeformation.DataCellsFilterArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataColumnWildcardArgs;
/// import com.pulumi.aws.lakeformation.inputs.DataCellsFilterTableDataRowFilterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var rowOnly = new DataCellsFilter("rowOnly", DataCellsFilterArgs.builder()
/// .tableData(DataCellsFilterTableDataArgs.builder()
/// .databaseName(example.name())
/// .name("regional-filter")
/// .tableCatalogId(current.accountId())
/// .tableName(exampleAwsGlueCatalogTable.name())
/// .columnWildcard(DataCellsFilterTableDataColumnWildcardArgs.builder()
/// .excludedColumnNames()
/// .build())
/// .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
/// .filterExpression("region = 'US-WEST'")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// rowOnly:
/// type: aws:lakeformation:DataCellsFilter
/// name: row_only
/// properties:
/// tableData:
/// databaseName: ${example.name}
/// name: regional-filter
/// tableCatalogId: ${current.accountId}
/// tableName: ${exampleAwsGlueCatalogTable.name}
/// columnWildcard:
/// excludedColumnNames: []
/// rowFilter:
/// filterExpression: region = 'US-WEST'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation Data Cells Filter using the <span pulumi-lang-nodejs="`databaseName`" pulumi-lang-dotnet="`DatabaseName`" pulumi-lang-go="`databaseName`" pulumi-lang-python="`database_name`" pulumi-lang-yaml="`databaseName`" pulumi-lang-java="`databaseName`">`database_name`</span>, <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, <span pulumi-lang-nodejs="`tableCatalogId`" pulumi-lang-dotnet="`TableCatalogId`" pulumi-lang-go="`tableCatalogId`" pulumi-lang-python="`table_catalog_id`" pulumi-lang-yaml="`tableCatalogId`" pulumi-lang-java="`tableCatalogId`">`table_catalog_id`</span>, and <span pulumi-lang-nodejs="`tableName`" pulumi-lang-dotnet="`TableName`" pulumi-lang-go="`tableName`" pulumi-lang-python="`table_name`" pulumi-lang-yaml="`tableName`" pulumi-lang-java="`tableName`">`table_name`</span> separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/dataCellsFilter:DataCellsFilter example database_name,name,table_catalog_id,table_name
/// ```
class DataCellsFilter extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Information about the data cells filter. See Table Data below for details.
  late final Output<DataCellsFilterTableData> tableData;
  late final Output<DataCellsFilterTimeouts?> timeouts;

  DataCellsFilter(
    String name, {
    DataCellsFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataCellsFilter:DataCellsFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.tableData = registerOutput<DataCellsFilterTableData>('tableData');
    this.timeouts = registerOutput<DataCellsFilterTimeouts?>('timeouts');
  }
}
