import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_args.dart';
import 'data_set_column_group.dart';
import 'data_set_column_level_permission_rule.dart';
import 'data_set_data_set_usage_configuration.dart';
import 'data_set_field_folder.dart';
import 'data_set_logical_table_map.dart';
import 'data_set_output_column.dart';
import 'data_set_permission.dart';
import 'data_set_physical_table_map.dart';
import 'data_set_refresh_properties.dart';
import 'data_set_row_level_permission_data_set.dart';
import 'data_set_row_level_permission_tag_configuration.dart';
import 'data_set_state.dart';

/// Resource for managing a QuickSight Data Set.
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
/// const example = new aws.quicksight.DataSet("example", {
///     physicalTableMaps: [{
///         s3Source: {
///             uploadSettings: {
///                 format: "JSON",
///             },
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///         },
///         physicalTableMapId: "example-id",
///     }],
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     physical_table_maps=[{
///         "s3_source": {
///             "upload_settings": {
///                 "format": "JSON",
///             },
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///         },
///         "physical_table_map_id": "example-id",
///     }],
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.DataSet("example", new()
///     {
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                 },
///                 PhysicalTableMapId = "example-id",
///             },
///         },
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 					},
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 				},
/// 			},
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
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
/// resource "aws_quicksight_dataset" "example" {
///   physical_table_maps {
///     s3_source = {
///       upload_settings = {
///         format = "JSON"
///       }
///       input_columns = [{
///         "name" = "Column1"
///         "type" = "STRING"
///       }]
///       data_source_arn = exampleAwsQuicksightDataSource.arn
///     }
///     physical_table_map_id = "example-id"
///   }
///   data_set_id = "example-id"
///   name        = "example-name"
///   import_mode = "SPICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.DataSet;
/// import com.pulumi.aws.quicksight.DataSetArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs;
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
///         var example = new DataSet("example", DataSetArgs.builder()
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .build())
///                 .physicalTableMapId("example-id")
///                 .build())
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:DataSet
///     properties:
///       physicalTableMaps:
///         - s3Source:
///             uploadSettings:
///               format: JSON
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///           physicalTableMapId: example-id
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
/// ```
///
///
/// ### With useAs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.DataSet("example", {
///     physicalTableMaps: [{
///         s3Source: {
///             uploadSettings: {
///                 format: "JSON",
///             },
///             inputColumns: [{
///                 name: "UserName",
///                 type: "STRING",
///             }],
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///         },
///         physicalTableMapId: "example-id",
///     }],
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
///     useAs: "RLS_RULES",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     physical_table_maps=[{
///         "s3_source": {
///             "upload_settings": {
///                 "format": "JSON",
///             },
///             "input_columns": [{
///                 "name": "UserName",
///                 "type": "STRING",
///             }],
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///         },
///         "physical_table_map_id": "example-id",
///     }],
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE",
///     use_as="RLS_RULES")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.DataSet("example", new()
///     {
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "UserName",
///                             Type = "STRING",
///                         },
///                     },
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                 },
///                 PhysicalTableMapId = "example-id",
///             },
///         },
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///         UseAs = "RLS_RULES",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("UserName"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 					},
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 				},
/// 			},
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
/// 			UseAs:      pulumi.String("RLS_RULES"),
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
/// resource "aws_quicksight_dataset" "example" {
///   physical_table_maps {
///     s3_source = {
///       upload_settings = {
///         format = "JSON"
///       }
///       input_columns = [{
///         "name" = "UserName"
///         "type" = "STRING"
///       }]
///       data_source_arn = exampleAwsQuicksightDataSource.arn
///     }
///     physical_table_map_id = "example-id"
///   }
///   data_set_id = "example-id"
///   name        = "example-name"
///   import_mode = "SPICE"
///   use_as      = "RLS_RULES"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.DataSet;
/// import com.pulumi.aws.quicksight.DataSetArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs;
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
///         var example = new DataSet("example", DataSetArgs.builder()
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("UserName")
///                         .type("STRING")
///                         .build())
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .build())
///                 .physicalTableMapId("example-id")
///                 .build())
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .useAs("RLS_RULES")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:DataSet
///     properties:
///       physicalTableMaps:
///         - s3Source:
///             uploadSettings:
///               format: JSON
///             inputColumns:
///               - name: UserName
///                 type: STRING
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///           physicalTableMapId: example-id
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
///       useAs: RLS_RULES
/// ```
///
///
/// ### With Column Level Permission Rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.DataSet("example", {
///     columnLevelPermissionRules: [{
///         columnNames: ["Column1"],
///         principals: [exampleAwsQuicksightUser.arn],
///     }],
///     physicalTableMaps: [{
///         s3Source: {
///             uploadSettings: {
///                 format: "JSON",
///             },
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///         },
///         physicalTableMapId: "example-id",
///     }],
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     column_level_permission_rules=[{
///         "column_names": ["Column1"],
///         "principals": [example_aws_quicksight_user["arn"]],
///     }],
///     physical_table_maps=[{
///         "s3_source": {
///             "upload_settings": {
///                 "format": "JSON",
///             },
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///         },
///         "physical_table_map_id": "example-id",
///     }],
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.DataSet("example", new()
///     {
///         ColumnLevelPermissionRules = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetColumnLevelPermissionRuleArgs
///             {
///                 ColumnNames = new[]
///                 {
///                     "Column1",
///                 },
///                 Principals = new[]
///                 {
///                     exampleAwsQuicksightUser.Arn,
///                 },
///             },
///         },
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                 },
///                 PhysicalTableMapId = "example-id",
///             },
///         },
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			ColumnLevelPermissionRules: quicksight.DataSetColumnLevelPermissionRuleArray{
/// 				&quicksight.DataSetColumnLevelPermissionRuleArgs{
/// 					ColumnNames: pulumi.StringArray{
/// 						pulumi.String("Column1"),
/// 					},
/// 					Principals: pulumi.StringArray{
/// 						exampleAwsQuicksightUser.Arn,
/// 					},
/// 				},
/// 			},
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 					},
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 				},
/// 			},
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
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
/// resource "aws_quicksight_dataset" "example" {
///   column_level_permission_rules {
///     column_names = ["Column1"]
///     principals   = [exampleAwsQuicksightUser.arn]
///   }
///   physical_table_maps {
///     s3_source = {
///       upload_settings = {
///         format = "JSON"
///       }
///       input_columns = [{
///         "name" = "Column1"
///         "type" = "STRING"
///       }]
///       data_source_arn = exampleAwsQuicksightDataSource.arn
///     }
///     physical_table_map_id = "example-id"
///   }
///   data_set_id = "example-id"
///   name        = "example-name"
///   import_mode = "SPICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.DataSet;
/// import com.pulumi.aws.quicksight.DataSetArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetColumnLevelPermissionRuleArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs;
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
///         var example = new DataSet("example", DataSetArgs.builder()
///             .columnLevelPermissionRules(DataSetColumnLevelPermissionRuleArgs.builder()
///                 .columnNames("Column1")
///                 .principals(exampleAwsQuicksightUser.arn())
///                 .build())
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .build())
///                 .physicalTableMapId("example-id")
///                 .build())
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:DataSet
///     properties:
///       columnLevelPermissionRules:
///         - columnNames:
///             - Column1
///           principals:
///             - ${exampleAwsQuicksightUser.arn}
///       physicalTableMaps:
///         - s3Source:
///             uploadSettings:
///               format: JSON
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///           physicalTableMapId: example-id
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
/// ```
///
///
/// ### With Field Folders
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.DataSet("example", {
///     fieldFolders: [{
///         fieldFoldersId: "example-id",
///         columns: ["Column1"],
///         description: "example description",
///     }],
///     physicalTableMaps: [{
///         s3Source: {
///             uploadSettings: {
///                 format: "JSON",
///             },
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///         },
///         physicalTableMapId: "example-id",
///     }],
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     field_folders=[{
///         "field_folders_id": "example-id",
///         "columns": ["Column1"],
///         "description": "example description",
///     }],
///     physical_table_maps=[{
///         "s3_source": {
///             "upload_settings": {
///                 "format": "JSON",
///             },
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///         },
///         "physical_table_map_id": "example-id",
///     }],
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.DataSet("example", new()
///     {
///         FieldFolders = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetFieldFolderArgs
///             {
///                 FieldFoldersId = "example-id",
///                 Columns = new[]
///                 {
///                     "Column1",
///                 },
///                 Description = "example description",
///             },
///         },
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                 },
///                 PhysicalTableMapId = "example-id",
///             },
///         },
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			FieldFolders: quicksight.DataSetFieldFolderArray{
/// 				&quicksight.DataSetFieldFolderArgs{
/// 					FieldFoldersId: pulumi.String("example-id"),
/// 					Columns: pulumi.StringArray{
/// 						pulumi.String("Column1"),
/// 					},
/// 					Description: pulumi.String("example description"),
/// 				},
/// 			},
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 					},
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 				},
/// 			},
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
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
/// resource "aws_quicksight_dataset" "example" {
///   field_folders {
///     field_folders_id = "example-id"
///     columns          = ["Column1"]
///     description      = "example description"
///   }
///   physical_table_maps {
///     s3_source = {
///       upload_settings = {
///         format = "JSON"
///       }
///       input_columns = [{
///         "name" = "Column1"
///         "type" = "STRING"
///       }]
///       data_source_arn = exampleAwsQuicksightDataSource.arn
///     }
///     physical_table_map_id = "example-id"
///   }
///   data_set_id = "example-id"
///   name        = "example-name"
///   import_mode = "SPICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.DataSet;
/// import com.pulumi.aws.quicksight.DataSetArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetFieldFolderArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs;
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
///         var example = new DataSet("example", DataSetArgs.builder()
///             .fieldFolders(DataSetFieldFolderArgs.builder()
///                 .fieldFoldersId("example-id")
///                 .columns("Column1")
///                 .description("example description")
///                 .build())
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .build())
///                 .physicalTableMapId("example-id")
///                 .build())
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:DataSet
///     properties:
///       fieldFolders:
///         - fieldFoldersId: example-id
///           columns:
///             - Column1
///           description: example description
///       physicalTableMaps:
///         - s3Source:
///             uploadSettings:
///               format: JSON
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///           physicalTableMapId: example-id
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
/// ```
///
///
/// ### With Permissions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.DataSet("example", {
///     permissions: [{
///         actions: [
///             "quicksight:DescribeDataSet",
///             "quicksight:DescribeDataSetPermissions",
///             "quicksight:PassDataSet",
///             "quicksight:DescribeIngestion",
///             "quicksight:ListIngestions",
///         ],
///         principal: exampleAwsQuicksightUser.arn,
///     }],
///     physicalTableMaps: [{
///         s3Source: {
///             uploadSettings: {
///                 format: "JSON",
///             },
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///         },
///         physicalTableMapId: "example-id",
///     }],
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     permissions=[{
///         "actions": [
///             "quicksight:DescribeDataSet",
///             "quicksight:DescribeDataSetPermissions",
///             "quicksight:PassDataSet",
///             "quicksight:DescribeIngestion",
///             "quicksight:ListIngestions",
///         ],
///         "principal": example_aws_quicksight_user["arn"],
///     }],
///     physical_table_maps=[{
///         "s3_source": {
///             "upload_settings": {
///                 "format": "JSON",
///             },
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///         },
///         "physical_table_map_id": "example-id",
///     }],
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.DataSet("example", new()
///     {
///         Permissions = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "quicksight:DescribeDataSet",
///                     "quicksight:DescribeDataSetPermissions",
///                     "quicksight:PassDataSet",
///                     "quicksight:DescribeIngestion",
///                     "quicksight:ListIngestions",
///                 },
///                 Principal = exampleAwsQuicksightUser.Arn,
///             },
///         },
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                 },
///                 PhysicalTableMapId = "example-id",
///             },
///         },
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			Permissions: quicksight.DataSetPermissionArray{
/// 				&quicksight.DataSetPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("quicksight:DescribeDataSet"),
/// 						pulumi.String("quicksight:DescribeDataSetPermissions"),
/// 						pulumi.String("quicksight:PassDataSet"),
/// 						pulumi.String("quicksight:DescribeIngestion"),
/// 						pulumi.String("quicksight:ListIngestions"),
/// 					},
/// 					Principal: pulumi.Any(exampleAwsQuicksightUser.Arn),
/// 				},
/// 			},
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 					},
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 				},
/// 			},
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
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
/// resource "aws_quicksight_dataset" "example" {
///   permissions {
///     actions   = ["quicksight:DescribeDataSet", "quicksight:DescribeDataSetPermissions", "quicksight:PassDataSet", "quicksight:DescribeIngestion", "quicksight:ListIngestions"]
///     principal = exampleAwsQuicksightUser.arn
///   }
///   physical_table_maps {
///     s3_source = {
///       upload_settings = {
///         format = "JSON"
///       }
///       input_columns = [{
///         "name" = "Column1"
///         "type" = "STRING"
///       }]
///       data_source_arn = exampleAwsQuicksightDataSource.arn
///     }
///     physical_table_map_id = "example-id"
///   }
///   data_set_id = "example-id"
///   name        = "example-name"
///   import_mode = "SPICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.DataSet;
/// import com.pulumi.aws.quicksight.DataSetArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPermissionArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs;
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
///         var example = new DataSet("example", DataSetArgs.builder()
///             .permissions(DataSetPermissionArgs.builder()
///                 .actions(
///                     "quicksight:DescribeDataSet",
///                     "quicksight:DescribeDataSetPermissions",
///                     "quicksight:PassDataSet",
///                     "quicksight:DescribeIngestion",
///                     "quicksight:ListIngestions")
///                 .principal(exampleAwsQuicksightUser.arn())
///                 .build())
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .build())
///                 .physicalTableMapId("example-id")
///                 .build())
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:DataSet
///     properties:
///       permissions:
///         - actions:
///             - quicksight:DescribeDataSet
///             - quicksight:DescribeDataSetPermissions
///             - quicksight:PassDataSet
///             - quicksight:DescribeIngestion
///             - quicksight:ListIngestions
///           principal: ${exampleAwsQuicksightUser.arn}
///       physicalTableMaps:
///         - s3Source:
///             uploadSettings:
///               format: JSON
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///           physicalTableMapId: example-id
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
/// ```
///
///
/// ### With Row Level Permission Tag Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.DataSet("example", {
///     rowLevelPermissionTagConfiguration: {
///         tagRules: [{
///             columnName: "Column1",
///             tagKey: "tagkey",
///             matchAllValue: "*",
///             tagMultiValueDelimiter: ",",
///         }],
///         status: "ENABLED",
///     },
///     physicalTableMaps: [{
///         s3Source: {
///             uploadSettings: {
///                 format: "JSON",
///             },
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///         },
///         physicalTableMapId: "example-id",
///     }],
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     row_level_permission_tag_configuration={
///         "tag_rules": [{
///             "column_name": "Column1",
///             "tag_key": "tagkey",
///             "match_all_value": "*",
///             "tag_multi_value_delimiter": ",",
///         }],
///         "status": "ENABLED",
///     },
///     physical_table_maps=[{
///         "s3_source": {
///             "upload_settings": {
///                 "format": "JSON",
///             },
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///         },
///         "physical_table_map_id": "example-id",
///     }],
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.DataSet("example", new()
///     {
///         RowLevelPermissionTagConfiguration = new Aws.Quicksight.Inputs.DataSetRowLevelPermissionTagConfigurationArgs
///         {
///             TagRules = new[]
///             {
///                 new Aws.Quicksight.Inputs.DataSetRowLevelPermissionTagConfigurationTagRuleArgs
///                 {
///                     ColumnName = "Column1",
///                     TagKey = "tagkey",
///                     MatchAllValue = "*",
///                     TagMultiValueDelimiter = ",",
///                 },
///             },
///             Status = "ENABLED",
///         },
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                 },
///                 PhysicalTableMapId = "example-id",
///             },
///         },
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			RowLevelPermissionTagConfiguration: &quicksight.DataSetRowLevelPermissionTagConfigurationArgs{
/// 				TagRules: quicksight.DataSetRowLevelPermissionTagConfigurationTagRuleArray{
/// 					&quicksight.DataSetRowLevelPermissionTagConfigurationTagRuleArgs{
/// 						ColumnName:             pulumi.String("Column1"),
/// 						TagKey:                 pulumi.String("tagkey"),
/// 						MatchAllValue:          pulumi.String("*"),
/// 						TagMultiValueDelimiter: pulumi.String(","),
/// 					},
/// 				},
/// 				Status: pulumi.String("ENABLED"),
/// 			},
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 					},
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 				},
/// 			},
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
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
/// resource "aws_quicksight_dataset" "example" {
///   row_level_permission_tag_configuration = {
///     tag_rules = [{
///       "columnName"             = "Column1"
///       "tagKey"                 = "tagkey"
///       "matchAllValue"          = "*"
///       "tagMultiValueDelimiter" = ","
///     }]
///     status = "ENABLED"
///   }
///   physical_table_maps {
///     s3_source = {
///       upload_settings = {
///         format = "JSON"
///       }
///       input_columns = [{
///         "name" = "Column1"
///         "type" = "STRING"
///       }]
///       data_source_arn = exampleAwsQuicksightDataSource.arn
///     }
///     physical_table_map_id = "example-id"
///   }
///   data_set_id = "example-id"
///   name        = "example-name"
///   import_mode = "SPICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.DataSet;
/// import com.pulumi.aws.quicksight.DataSetArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetRowLevelPermissionTagConfigurationArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetRowLevelPermissionTagConfigurationTagRuleArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs;
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
///         var example = new DataSet("example", DataSetArgs.builder()
///             .rowLevelPermissionTagConfiguration(DataSetRowLevelPermissionTagConfigurationArgs.builder()
///                 .tagRules(DataSetRowLevelPermissionTagConfigurationTagRuleArgs.builder()
///                     .columnName("Column1")
///                     .tagKey("tagkey")
///                     .matchAllValue("*")
///                     .tagMultiValueDelimiter(",")
///                     .build())
///                 .status("ENABLED")
///                 .build())
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .build())
///                 .physicalTableMapId("example-id")
///                 .build())
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:DataSet
///     properties:
///       rowLevelPermissionTagConfiguration:
///         tagRules:
///           - columnName: Column1
///             tagKey: tagkey
///             matchAllValue: '*'
///             tagMultiValueDelimiter: ','
///         status: ENABLED
///       physicalTableMaps:
///         - s3Source:
///             uploadSettings:
///               format: JSON
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///           physicalTableMapId: example-id
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Data Set using the AWS account ID and data set ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/dataSet:DataSet example 123456789012,example-id
/// ```
class DataSet extends pulumi.CustomResource {
  /// ARN of the data set.
  late final pulumi.Output<String> arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;
  /// Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  late final pulumi.Output<List<DataSetColumnGroup>?> columnGroups;
  /// A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  late final pulumi.Output<List<DataSetColumnLevelPermissionRule>?> columnLevelPermissionRules;
  /// Identifier for the data set.
  late final pulumi.Output<String> dataSetId;
  /// The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  late final pulumi.Output<DataSetDataSetUsageConfiguration> dataSetUsageConfiguration;
  /// The folder that contains fields and nested subfolders for your dataset. See field_folders.
  late final pulumi.Output<List<DataSetFieldFolder>?> fieldFolders;
  /// Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  late final pulumi.Output<String> importMode;
  /// Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  late final pulumi.Output<List<DataSetLogicalTableMap>> logicalTableMaps;
  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// The final set of columns available for use in analyses and dashboards after all data preparation and transformation steps have been applied within the data set.  See `outputColumns` Block below.
  late final pulumi.Output<List<DataSetOutputColumn>> outputColumns;
  /// A set of resource permissions on the data source. Maximum of 64 items. See permissions.
  late final pulumi.Output<List<DataSetPermission>?> permissions;
  /// Declares the physical tables that are available in the underlying data sources. See physical_table_map.
  late final pulumi.Output<List<DataSetPhysicalTableMap>?> physicalTableMaps;
  /// The refresh properties for the data set. **NOTE**: Only valid when `importMode` is set to `SPICE`. See refresh_properties.
  late final pulumi.Output<DataSetRefreshProperties?> refreshProperties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The row-level security configuration for the data that you want to create. See row_level_permission_data_set.
  late final pulumi.Output<DataSetRowLevelPermissionDataSet?> rowLevelPermissionDataSet;
  /// The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only. See row_level_permission_tag_configuration.
  late final pulumi.Output<DataSetRowLevelPermissionTagConfiguration?> rowLevelPermissionTagConfiguration;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Specifies the purpose of the data set. The only valid value is `RLS_RULES`, which designates this data set as a Row Level Security (RLS) rules dataset. An RLS rules dataset is used to control access to data at the row level in QuickSight analyses and dashboards. See the [AWS documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSet.html#API_CreateDataSet_RequestSyntax) for details.
  late final pulumi.Output<String?> useAs;

  /// Creates a new [DataSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSet]. {@macro pulumi_quicksight_data_set_data_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSet(
    String name, {
    DataSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/dataSet:DataSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    columnGroups = registerOutput<List<DataSetColumnGroup>?>('columnGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetColumnGroup>(guardedValue, (value) => DataSetColumnGroup.fromMap((value as Map).cast<String, dynamic>())); });
    columnLevelPermissionRules = registerOutput<List<DataSetColumnLevelPermissionRule>?>('columnLevelPermissionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetColumnLevelPermissionRule>(guardedValue, (value) => DataSetColumnLevelPermissionRule.fromMap((value as Map).cast<String, dynamic>())); });
    dataSetId = registerOutput<String>('dataSetId');
    dataSetUsageConfiguration = registerOutput<DataSetDataSetUsageConfiguration>('dataSetUsageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetDataSetUsageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fieldFolders = registerOutput<List<DataSetFieldFolder>?>('fieldFolders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetFieldFolder>(guardedValue, (value) => DataSetFieldFolder.fromMap((value as Map).cast<String, dynamic>())); });
    importMode = registerOutput<String>('importMode');
    logicalTableMaps = registerOutput<List<DataSetLogicalTableMap>>('logicalTableMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetLogicalTableMap>(guardedValue, (value) => DataSetLogicalTableMap.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    outputColumns = registerOutput<List<DataSetOutputColumn>>('outputColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetOutputColumn>(guardedValue, (value) => DataSetOutputColumn.fromMap((value as Map).cast<String, dynamic>())); });
    permissions = registerOutput<List<DataSetPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetPermission>(guardedValue, (value) => DataSetPermission.fromMap((value as Map).cast<String, dynamic>())); });
    physicalTableMaps = registerOutput<List<DataSetPhysicalTableMap>?>('physicalTableMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetPhysicalTableMap>(guardedValue, (value) => DataSetPhysicalTableMap.fromMap((value as Map).cast<String, dynamic>())); });
    refreshProperties = registerOutput<DataSetRefreshProperties?>('refreshProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRefreshProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rowLevelPermissionDataSet = registerOutput<DataSetRowLevelPermissionDataSet?>('rowLevelPermissionDataSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRowLevelPermissionDataSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rowLevelPermissionTagConfiguration = registerOutput<DataSetRowLevelPermissionTagConfiguration?>('rowLevelPermissionTagConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRowLevelPermissionTagConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    useAs = registerOutput<String?>('useAs');
  }

  /// Gets an existing [DataSet] resource's state with the given [name] and [id].
  static DataSet get(
    String name,
    pulumi.Input<String> id, {
    DataSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/dataSet:DataSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    columnGroups = registerOutput<List<DataSetColumnGroup>?>('columnGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetColumnGroup>(guardedValue, (value) => DataSetColumnGroup.fromMap((value as Map).cast<String, dynamic>())); });
    columnLevelPermissionRules = registerOutput<List<DataSetColumnLevelPermissionRule>?>('columnLevelPermissionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetColumnLevelPermissionRule>(guardedValue, (value) => DataSetColumnLevelPermissionRule.fromMap((value as Map).cast<String, dynamic>())); });
    dataSetId = registerOutput<String>('dataSetId');
    dataSetUsageConfiguration = registerOutput<DataSetDataSetUsageConfiguration>('dataSetUsageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetDataSetUsageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fieldFolders = registerOutput<List<DataSetFieldFolder>?>('fieldFolders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetFieldFolder>(guardedValue, (value) => DataSetFieldFolder.fromMap((value as Map).cast<String, dynamic>())); });
    importMode = registerOutput<String>('importMode');
    logicalTableMaps = registerOutput<List<DataSetLogicalTableMap>>('logicalTableMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetLogicalTableMap>(guardedValue, (value) => DataSetLogicalTableMap.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    outputColumns = registerOutput<List<DataSetOutputColumn>>('outputColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetOutputColumn>(guardedValue, (value) => DataSetOutputColumn.fromMap((value as Map).cast<String, dynamic>())); });
    permissions = registerOutput<List<DataSetPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetPermission>(guardedValue, (value) => DataSetPermission.fromMap((value as Map).cast<String, dynamic>())); });
    physicalTableMaps = registerOutput<List<DataSetPhysicalTableMap>?>('physicalTableMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetPhysicalTableMap>(guardedValue, (value) => DataSetPhysicalTableMap.fromMap((value as Map).cast<String, dynamic>())); });
    refreshProperties = registerOutput<DataSetRefreshProperties?>('refreshProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRefreshProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rowLevelPermissionDataSet = registerOutput<DataSetRowLevelPermissionDataSet?>('rowLevelPermissionDataSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRowLevelPermissionDataSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rowLevelPermissionTagConfiguration = registerOutput<DataSetRowLevelPermissionTagConfiguration?>('rowLevelPermissionTagConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRowLevelPermissionTagConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    useAs = registerOutput<String?>('useAs');
  }

  /// Creates a typed reference to an existing [DataSet] resource.
  DataSet.reference(String urn)
    : super(
        'aws:quicksight/dataSet:DataSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    columnGroups = registerOutput<List<DataSetColumnGroup>?>('columnGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetColumnGroup>(guardedValue, (value) => DataSetColumnGroup.fromMap((value as Map).cast<String, dynamic>())); });
    columnLevelPermissionRules = registerOutput<List<DataSetColumnLevelPermissionRule>?>('columnLevelPermissionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetColumnLevelPermissionRule>(guardedValue, (value) => DataSetColumnLevelPermissionRule.fromMap((value as Map).cast<String, dynamic>())); });
    dataSetId = registerOutput<String>('dataSetId');
    dataSetUsageConfiguration = registerOutput<DataSetDataSetUsageConfiguration>('dataSetUsageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetDataSetUsageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fieldFolders = registerOutput<List<DataSetFieldFolder>?>('fieldFolders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetFieldFolder>(guardedValue, (value) => DataSetFieldFolder.fromMap((value as Map).cast<String, dynamic>())); });
    importMode = registerOutput<String>('importMode');
    logicalTableMaps = registerOutput<List<DataSetLogicalTableMap>>('logicalTableMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetLogicalTableMap>(guardedValue, (value) => DataSetLogicalTableMap.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    outputColumns = registerOutput<List<DataSetOutputColumn>>('outputColumns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetOutputColumn>(guardedValue, (value) => DataSetOutputColumn.fromMap((value as Map).cast<String, dynamic>())); });
    permissions = registerOutput<List<DataSetPermission>?>('permissions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetPermission>(guardedValue, (value) => DataSetPermission.fromMap((value as Map).cast<String, dynamic>())); });
    physicalTableMaps = registerOutput<List<DataSetPhysicalTableMap>?>('physicalTableMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataSetPhysicalTableMap>(guardedValue, (value) => DataSetPhysicalTableMap.fromMap((value as Map).cast<String, dynamic>())); });
    refreshProperties = registerOutput<DataSetRefreshProperties?>('refreshProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRefreshProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    rowLevelPermissionDataSet = registerOutput<DataSetRowLevelPermissionDataSet?>('rowLevelPermissionDataSet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRowLevelPermissionDataSet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rowLevelPermissionTagConfiguration = registerOutput<DataSetRowLevelPermissionTagConfiguration?>('rowLevelPermissionTagConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSetRowLevelPermissionTagConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    useAs = registerOutput<String?>('useAs');
  }
}
