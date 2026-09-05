import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_cells_filter_args.dart';
import 'data_cells_filter_state.dart';
import 'data_cells_filter_table_data.dart';
import 'data_cells_filter_timeouts.dart';

/// Resource for managing an AWS Lake Formation Data Cells Filter.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.DataCellsFilter("example", {tableData: {
///     rowFilter: {
///         filterExpression: "my_column='example'",
///     },
///     databaseName: exampleAwsGlueCatalogDatabase.name,
///     name: "example",
///     tableCatalogId: current.accountId,
///     tableName: exampleAwsGlueCatalogTable.name,
///     columnNames: ["my_column"],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.DataCellsFilter("example", table_data={
///     "row_filter": {
///         "filter_expression": "my_column='example'",
///     },
///     "database_name": example_aws_glue_catalog_database["name"],
///     "name": "example",
///     "table_catalog_id": current["accountId"],
///     "table_name": example_aws_glue_catalog_table["name"],
///     "column_names": ["my_column"],
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
///     var example = new Aws.LakeFormation.DataCellsFilter("example", new()
///     {
///         TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
///         {
///             RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
///             {
///                 FilterExpression = "my_column='example'",
///             },
///             DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///             Name = "example",
///             TableCatalogId = current.AccountId,
///             TableName = exampleAwsGlueCatalogTable.Name,
///             ColumnNames = new[]
///             {
///                 "my_column",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewDataCellsFilter(ctx, "example", &lakeformation.DataCellsFilterArgs{
/// 			TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// 				RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// 					FilterExpression: pulumi.String("my_column='example'"),
/// 				},
/// 				DatabaseName:   pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 				Name:           pulumi.String("example"),
/// 				TableCatalogId: pulumi.Any(current.AccountId),
/// 				TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// 				ColumnNames: pulumi.StringArray{
/// 					pulumi.String("my_column"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lakeformation_datacellsfilter" "example" {
///   table_data = {
///     row_filter = {
///       filter_expression = "my_column='example'"
///     }
///     database_name    = exampleAwsGlueCatalogDatabase.name
///     name             = "example"
///     table_catalog_id = current.accountId
///     table_name       = exampleAwsGlueCatalogTable.name
///     column_names     = ["my_column"]
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DataCellsFilter("example", DataCellsFilterArgs.builder()
///             .tableData(DataCellsFilterTableDataArgs.builder()
///                 .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
///                     .filterExpression("my_column='example'")
///                     .build())
///                 .databaseName(exampleAwsGlueCatalogDatabase.name())
///                 .name("example")
///                 .tableCatalogId(current.accountId())
///                 .tableName(exampleAwsGlueCatalogTable.name())
///                 .columnNames("my_column")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:DataCellsFilter
///     properties:
///       tableData:
///         rowFilter:
///           filterExpression: my_column='example'
///         databaseName: ${exampleAwsGlueCatalogDatabase.name}
///         name: example
///         tableCatalogId: ${current.accountId}
///         tableName: ${exampleAwsGlueCatalogTable.name}
///         columnNames:
///           - my_column
/// ```
///
///
/// ### Filter with Excluded Columns Only (No Row Filter)
///
/// When excluding columns without a row filter, you must include `allRowsWildcard {}`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const excludedColumns = new aws.lakeformation.DataCellsFilter("excluded_columns", {tableData: {
///     columnWildcard: {
///         excludedColumnNames: [
///             "ssn",
///             "credit_card",
///         ],
///     },
///     rowFilter: {
///         allRowsWildcard: {},
///     },
///     databaseName: example.name,
///     name: "exclude-pii",
///     tableCatalogId: current.accountId,
///     tableName: exampleAwsGlueCatalogTable.name,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// excluded_columns = aws.lakeformation.DataCellsFilter("excluded_columns", table_data={
///     "column_wildcard": {
///         "excluded_column_names": [
///             "ssn",
///             "credit_card",
///         ],
///     },
///     "row_filter": {
///         "all_rows_wildcard": {},
///     },
///     "database_name": example["name"],
///     "name": "exclude-pii",
///     "table_catalog_id": current["accountId"],
///     "table_name": example_aws_glue_catalog_table["name"],
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
///     var excludedColumns = new Aws.LakeFormation.DataCellsFilter("excluded_columns", new()
///     {
///         TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
///         {
///             ColumnWildcard = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataColumnWildcardArgs
///             {
///                 ExcludedColumnNames = new[]
///                 {
///                     "ssn",
///                     "credit_card",
///                 },
///             },
///             RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
///             {
///                 AllRowsWildcard = null,
///             },
///             DatabaseName = example.Name,
///             Name = "exclude-pii",
///             TableCatalogId = current.AccountId,
///             TableName = exampleAwsGlueCatalogTable.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewDataCellsFilter(ctx, "excluded_columns", &lakeformation.DataCellsFilterArgs{
/// 			TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// 				ColumnWildcard: &lakeformation.DataCellsFilterTableDataColumnWildcardArgs{
/// 					ExcludedColumnNames: pulumi.StringArray{
/// 						pulumi.String("ssn"),
/// 						pulumi.String("credit_card"),
/// 					},
/// 				},
/// 				RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// 					AllRowsWildcard: &lakeformation.DataCellsFilterTableDataRowFilterAllRowsWildcardArgs{},
/// 				},
/// 				DatabaseName:   pulumi.Any(example.Name),
/// 				Name:           pulumi.String("exclude-pii"),
/// 				TableCatalogId: pulumi.Any(current.AccountId),
/// 				TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lakeformation_datacellsfilter" "excluded_columns" {
///   table_data = {
///     column_wildcard = {
///       excluded_column_names = ["ssn", "credit_card"]
///     }
///     row_filter = {
///       all_rows_wildcard = {}
///     }
///     database_name    = example.name
///     name             = "exclude-pii"
///     table_catalog_id = current.accountId
///     table_name       = exampleAwsGlueCatalogTable.name
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var excludedColumns = new DataCellsFilter("excludedColumns", DataCellsFilterArgs.builder()
///             .tableData(DataCellsFilterTableDataArgs.builder()
///                 .columnWildcard(DataCellsFilterTableDataColumnWildcardArgs.builder()
///                     .excludedColumnNames(
///                         "ssn",
///                         "credit_card")
///                     .build())
///                 .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
///                     .allRowsWildcard(DataCellsFilterTableDataRowFilterAllRowsWildcardArgs.builder()
///                         .build())
///                     .build())
///                 .databaseName(example.name())
///                 .name("exclude-pii")
///                 .tableCatalogId(current.accountId())
///                 .tableName(exampleAwsGlueCatalogTable.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   excludedColumns:
///     type: aws:lakeformation:DataCellsFilter
///     name: excluded_columns
///     properties:
///       tableData:
///         columnWildcard:
///           excludedColumnNames:
///             - ssn
///             - credit_card
///         rowFilter:
///           allRowsWildcard: {}
///         databaseName: ${example.name}
///         name: exclude-pii
///         tableCatalogId: ${current.accountId}
///         tableName: ${exampleAwsGlueCatalogTable.name}
/// ```
///
///
/// ### Filter with Row Filter and Excluded Columns
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const rowAndColumn = new aws.lakeformation.DataCellsFilter("row_and_column", {tableData: {
///     columnWildcard: {
///         excludedColumnNames: [
///             "salary",
///             "bonus",
///         ],
///     },
///     rowFilter: {
///         filterExpression: "department = 'Marketing'",
///     },
///     databaseName: example.name,
///     name: "marketing-filtered",
///     tableCatalogId: current.accountId,
///     tableName: exampleAwsGlueCatalogTable.name,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// row_and_column = aws.lakeformation.DataCellsFilter("row_and_column", table_data={
///     "column_wildcard": {
///         "excluded_column_names": [
///             "salary",
///             "bonus",
///         ],
///     },
///     "row_filter": {
///         "filter_expression": "department = 'Marketing'",
///     },
///     "database_name": example["name"],
///     "name": "marketing-filtered",
///     "table_catalog_id": current["accountId"],
///     "table_name": example_aws_glue_catalog_table["name"],
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
///     var rowAndColumn = new Aws.LakeFormation.DataCellsFilter("row_and_column", new()
///     {
///         TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
///         {
///             ColumnWildcard = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataColumnWildcardArgs
///             {
///                 ExcludedColumnNames = new[]
///                 {
///                     "salary",
///                     "bonus",
///                 },
///             },
///             RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
///             {
///                 FilterExpression = "department = 'Marketing'",
///             },
///             DatabaseName = example.Name,
///             Name = "marketing-filtered",
///             TableCatalogId = current.AccountId,
///             TableName = exampleAwsGlueCatalogTable.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewDataCellsFilter(ctx, "row_and_column", &lakeformation.DataCellsFilterArgs{
/// 			TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// 				ColumnWildcard: &lakeformation.DataCellsFilterTableDataColumnWildcardArgs{
/// 					ExcludedColumnNames: pulumi.StringArray{
/// 						pulumi.String("salary"),
/// 						pulumi.String("bonus"),
/// 					},
/// 				},
/// 				RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// 					FilterExpression: pulumi.String("department = 'Marketing'"),
/// 				},
/// 				DatabaseName:   pulumi.Any(example.Name),
/// 				Name:           pulumi.String("marketing-filtered"),
/// 				TableCatalogId: pulumi.Any(current.AccountId),
/// 				TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lakeformation_datacellsfilter" "row_and_column" {
///   table_data = {
///     column_wildcard = {
///       excluded_column_names = ["salary", "bonus"]
///     }
///     row_filter = {
///       filter_expression = "department = 'Marketing'"
///     }
///     database_name    = example.name
///     name             = "marketing-filtered"
///     table_catalog_id = current.accountId
///     table_name       = exampleAwsGlueCatalogTable.name
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var rowAndColumn = new DataCellsFilter("rowAndColumn", DataCellsFilterArgs.builder()
///             .tableData(DataCellsFilterTableDataArgs.builder()
///                 .columnWildcard(DataCellsFilterTableDataColumnWildcardArgs.builder()
///                     .excludedColumnNames(
///                         "salary",
///                         "bonus")
///                     .build())
///                 .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
///                     .filterExpression("department = 'Marketing'")
///                     .build())
///                 .databaseName(example.name())
///                 .name("marketing-filtered")
///                 .tableCatalogId(current.accountId())
///                 .tableName(exampleAwsGlueCatalogTable.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rowAndColumn:
///     type: aws:lakeformation:DataCellsFilter
///     name: row_and_column
///     properties:
///       tableData:
///         columnWildcard:
///           excludedColumnNames:
///             - salary
///             - bonus
///         rowFilter:
///           filterExpression: department = 'Marketing'
///         databaseName: ${example.name}
///         name: marketing-filtered
///         tableCatalogId: ${current.accountId}
///         tableName: ${exampleAwsGlueCatalogTable.name}
/// ```
///
///
/// ### Filter with Row Filter Only (All Columns Included)
///
/// To include all columns with a row filter, set `excludedColumnNames` to an empty list:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const rowOnly = new aws.lakeformation.DataCellsFilter("row_only", {tableData: {
///     columnWildcard: {
///         excludedColumnNames: [],
///     },
///     rowFilter: {
///         filterExpression: "region = 'US-WEST'",
///     },
///     databaseName: example.name,
///     name: "regional-filter",
///     tableCatalogId: current.accountId,
///     tableName: exampleAwsGlueCatalogTable.name,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// row_only = aws.lakeformation.DataCellsFilter("row_only", table_data={
///     "column_wildcard": {
///         "excluded_column_names": [],
///     },
///     "row_filter": {
///         "filter_expression": "region = 'US-WEST'",
///     },
///     "database_name": example["name"],
///     "name": "regional-filter",
///     "table_catalog_id": current["accountId"],
///     "table_name": example_aws_glue_catalog_table["name"],
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
///     var rowOnly = new Aws.LakeFormation.DataCellsFilter("row_only", new()
///     {
///         TableData = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataArgs
///         {
///             ColumnWildcard = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataColumnWildcardArgs
///             {
///                 ExcludedColumnNames = new() { },
///             },
///             RowFilter = new Aws.LakeFormation.Inputs.DataCellsFilterTableDataRowFilterArgs
///             {
///                 FilterExpression = "region = 'US-WEST'",
///             },
///             DatabaseName = example.Name,
///             Name = "regional-filter",
///             TableCatalogId = current.AccountId,
///             TableName = exampleAwsGlueCatalogTable.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewDataCellsFilter(ctx, "row_only", &lakeformation.DataCellsFilterArgs{
/// 			TableData: &lakeformation.DataCellsFilterTableDataArgs{
/// 				ColumnWildcard: &lakeformation.DataCellsFilterTableDataColumnWildcardArgs{
/// 					ExcludedColumnNames: pulumi.StringArray{},
/// 				},
/// 				RowFilter: &lakeformation.DataCellsFilterTableDataRowFilterArgs{
/// 					FilterExpression: pulumi.String("region = 'US-WEST'"),
/// 				},
/// 				DatabaseName:   pulumi.Any(example.Name),
/// 				Name:           pulumi.String("regional-filter"),
/// 				TableCatalogId: pulumi.Any(current.AccountId),
/// 				TableName:      pulumi.Any(exampleAwsGlueCatalogTable.Name),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lakeformation_datacellsfilter" "row_only" {
///   table_data = {
///     column_wildcard = {
///       excluded_column_names = []
///     }
///     row_filter = {
///       filter_expression = "region = 'US-WEST'"
///     }
///     database_name    = example.name
///     name             = "regional-filter"
///     table_catalog_id = current.accountId
///     table_name       = exampleAwsGlueCatalogTable.name
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var rowOnly = new DataCellsFilter("rowOnly", DataCellsFilterArgs.builder()
///             .tableData(DataCellsFilterTableDataArgs.builder()
///                 .columnWildcard(DataCellsFilterTableDataColumnWildcardArgs.builder()
///                     .excludedColumnNames()
///                     .build())
///                 .rowFilter(DataCellsFilterTableDataRowFilterArgs.builder()
///                     .filterExpression("region = 'US-WEST'")
///                     .build())
///                 .databaseName(example.name())
///                 .name("regional-filter")
///                 .tableCatalogId(current.accountId())
///                 .tableName(exampleAwsGlueCatalogTable.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   rowOnly:
///     type: aws:lakeformation:DataCellsFilter
///     name: row_only
///     properties:
///       tableData:
///         columnWildcard:
///           excludedColumnNames: []
///         rowFilter:
///           filterExpression: region = 'US-WEST'
///         databaseName: ${example.name}
///         name: regional-filter
///         tableCatalogId: ${current.accountId}
///         tableName: ${exampleAwsGlueCatalogTable.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation Data Cells Filter using the `databaseName`, `name`, `tableCatalogId`, and `tableName` separated by `,`. For example:
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

  /// Creates a new [DataCellsFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCellsFilter]. {@macro pulumi_lakeformation_data_cells_filter_data_cells_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCellsFilter(
    String name, {
    DataCellsFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataCellsFilter:DataCellsFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    tableData = registerOutput<DataCellsFilterTableData>('tableData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCellsFilterTableData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<DataCellsFilterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCellsFilterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DataCellsFilter] resource's state with the given [name] and [id].
  static DataCellsFilter get(
    String name,
    pulumi.Input<String> id, {
    DataCellsFilterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataCellsFilter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataCellsFilter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataCellsFilter:DataCellsFilter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    tableData = registerOutput<DataCellsFilterTableData>('tableData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCellsFilterTableData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<DataCellsFilterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCellsFilterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DataCellsFilter] resource.
  DataCellsFilter.reference(String urn)
    : super(
        'aws:lakeformation/dataCellsFilter:DataCellsFilter',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    tableData = registerOutput<DataCellsFilterTableData>('tableData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCellsFilterTableData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<DataCellsFilterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataCellsFilterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
