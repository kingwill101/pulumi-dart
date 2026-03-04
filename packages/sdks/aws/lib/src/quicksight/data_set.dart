import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_args.dart';
import 'data_set_data_set_usage_configuration.dart';
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
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
///     physicalTableMaps: [{
///         physicalTableMapId: "example-id",
///         s3Source: {
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             uploadSettings: {
///                 format: "JSON",
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE",
///     physical_table_maps=[{
///         "physical_table_map_id": "example-id",
///         "s3_source": {
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "upload_settings": {
///                 "format": "JSON",
///             },
///         },
///     }])
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
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 PhysicalTableMapId = "example-id",
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 					},
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .physicalTableMapId("example-id")
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .build())
///                 .build())
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
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
///       physicalTableMaps:
///         - physicalTableMapId: example-id
///           s3Source:
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             uploadSettings:
///               format: JSON
/// ```
///
///
/// ### With use_as
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.DataSet("example", {
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
///     useAs: "RLS_RULES",
///     physicalTableMaps: [{
///         physicalTableMapId: "example-id",
///         s3Source: {
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///             inputColumns: [{
///                 name: "UserName",
///                 type: "STRING",
///             }],
///             uploadSettings: {
///                 format: "JSON",
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE",
///     use_as="RLS_RULES",
///     physical_table_maps=[{
///         "physical_table_map_id": "example-id",
///         "s3_source": {
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///             "input_columns": [{
///                 "name": "UserName",
///                 "type": "STRING",
///             }],
///             "upload_settings": {
///                 "format": "JSON",
///             },
///         },
///     }])
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
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///         UseAs = "RLS_RULES",
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 PhysicalTableMapId = "example-id",
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "UserName",
///                             Type = "STRING",
///                         },
///                     },
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewDataSet(ctx, "example", &quicksight.DataSetArgs{
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
/// 			UseAs:      pulumi.String("RLS_RULES"),
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("UserName"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 					},
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .useAs("RLS_RULES")
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .physicalTableMapId("example-id")
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("UserName")
///                         .type("STRING")
///                         .build())
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .build())
///                 .build())
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
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
///       useAs: RLS_RULES
///       physicalTableMaps:
///         - physicalTableMapId: example-id
///           s3Source:
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///             inputColumns:
///               - name: UserName
///                 type: STRING
///             uploadSettings:
///               format: JSON
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
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
///     physicalTableMaps: [{
///         physicalTableMapId: "example-id",
///         s3Source: {
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             uploadSettings: {
///                 format: "JSON",
///             },
///         },
///     }],
///     columnLevelPermissionRules: [{
///         columnNames: ["Column1"],
///         principals: [exampleAwsQuicksightUser.arn],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE",
///     physical_table_maps=[{
///         "physical_table_map_id": "example-id",
///         "s3_source": {
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "upload_settings": {
///                 "format": "JSON",
///             },
///         },
///     }],
///     column_level_permission_rules=[{
///         "column_names": ["Column1"],
///         "principals": [example_aws_quicksight_user["arn"]],
///     }])
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
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 PhysicalTableMapId = "example-id",
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                 },
///             },
///         },
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
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.quicksight.inputs.DataSetColumnLevelPermissionRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .physicalTableMapId("example-id")
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .build())
///                 .build())
///             .columnLevelPermissionRules(DataSetColumnLevelPermissionRuleArgs.builder()
///                 .columnNames("Column1")
///                 .principals(exampleAwsQuicksightUser.arn())
///                 .build())
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
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
///       physicalTableMaps:
///         - physicalTableMapId: example-id
///           s3Source:
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             uploadSettings:
///               format: JSON
///       columnLevelPermissionRules:
///         - columnNames:
///             - Column1
///           principals:
///             - ${exampleAwsQuicksightUser.arn}
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
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
///     physicalTableMaps: [{
///         physicalTableMapId: "example-id",
///         s3Source: {
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             uploadSettings: {
///                 format: "JSON",
///             },
///         },
///     }],
///     fieldFolders: [{
///         fieldFoldersId: "example-id",
///         columns: ["Column1"],
///         description: "example description",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE",
///     physical_table_maps=[{
///         "physical_table_map_id": "example-id",
///         "s3_source": {
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "upload_settings": {
///                 "format": "JSON",
///             },
///         },
///     }],
///     field_folders=[{
///         "field_folders_id": "example-id",
///         "columns": ["Column1"],
///         "description": "example description",
///     }])
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
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 PhysicalTableMapId = "example-id",
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                 },
///             },
///         },
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
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			FieldFolders: quicksight.DataSetFieldFolderArray{
/// 				&quicksight.DataSetFieldFolderArgs{
/// 					FieldFoldersId: pulumi.String("example-id"),
/// 					Columns: pulumi.StringArray{
/// 						pulumi.String("Column1"),
/// 					},
/// 					Description: pulumi.String("example description"),
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
/// import com.pulumi.aws.quicksight.inputs.DataSetFieldFolderArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .physicalTableMapId("example-id")
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .build())
///                 .build())
///             .fieldFolders(DataSetFieldFolderArgs.builder()
///                 .fieldFoldersId("example-id")
///                 .columns("Column1")
///                 .description("example description")
///                 .build())
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
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
///       physicalTableMaps:
///         - physicalTableMapId: example-id
///           s3Source:
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             uploadSettings:
///               format: JSON
///       fieldFolders:
///         - fieldFoldersId: example-id
///           columns:
///             - Column1
///           description: example description
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
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
///     physicalTableMaps: [{
///         physicalTableMapId: "example-id",
///         s3Source: {
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             uploadSettings: {
///                 format: "JSON",
///             },
///         },
///     }],
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE",
///     physical_table_maps=[{
///         "physical_table_map_id": "example-id",
///         "s3_source": {
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "upload_settings": {
///                 "format": "JSON",
///             },
///         },
///     }],
///     permissions=[{
///         "actions": [
///             "quicksight:DescribeDataSet",
///             "quicksight:DescribeDataSetPermissions",
///             "quicksight:PassDataSet",
///             "quicksight:DescribeIngestion",
///             "quicksight:ListIngestions",
///         ],
///         "principal": example_aws_quicksight_user["arn"],
///     }])
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
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 PhysicalTableMapId = "example-id",
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                 },
///             },
///         },
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
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.quicksight.inputs.DataSetPermissionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .physicalTableMapId("example-id")
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .build())
///                 .build())
///             .permissions(DataSetPermissionArgs.builder()
///                 .actions(
///                     "quicksight:DescribeDataSet",
///                     "quicksight:DescribeDataSetPermissions",
///                     "quicksight:PassDataSet",
///                     "quicksight:DescribeIngestion",
///                     "quicksight:ListIngestions")
///                 .principal(exampleAwsQuicksightUser.arn())
///                 .build())
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
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
///       physicalTableMaps:
///         - physicalTableMapId: example-id
///           s3Source:
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             uploadSettings:
///               format: JSON
///       permissions:
///         - actions:
///             - quicksight:DescribeDataSet
///             - quicksight:DescribeDataSetPermissions
///             - quicksight:PassDataSet
///             - quicksight:DescribeIngestion
///             - quicksight:ListIngestions
///           principal: ${exampleAwsQuicksightUser.arn}
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
///     dataSetId: "example-id",
///     name: "example-name",
///     importMode: "SPICE",
///     physicalTableMaps: [{
///         physicalTableMapId: "example-id",
///         s3Source: {
///             dataSourceArn: exampleAwsQuicksightDataSource.arn,
///             inputColumns: [{
///                 name: "Column1",
///                 type: "STRING",
///             }],
///             uploadSettings: {
///                 format: "JSON",
///             },
///         },
///     }],
///     rowLevelPermissionTagConfiguration: {
///         status: "ENABLED",
///         tagRules: [{
///             columnName: "Column1",
///             tagKey: "tagkey",
///             matchAllValue: "*",
///             tagMultiValueDelimiter: ",",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.DataSet("example",
///     data_set_id="example-id",
///     name="example-name",
///     import_mode="SPICE",
///     physical_table_maps=[{
///         "physical_table_map_id": "example-id",
///         "s3_source": {
///             "data_source_arn": example_aws_quicksight_data_source["arn"],
///             "input_columns": [{
///                 "name": "Column1",
///                 "type": "STRING",
///             }],
///             "upload_settings": {
///                 "format": "JSON",
///             },
///         },
///     }],
///     row_level_permission_tag_configuration={
///         "status": "ENABLED",
///         "tag_rules": [{
///             "column_name": "Column1",
///             "tag_key": "tagkey",
///             "match_all_value": "*",
///             "tag_multi_value_delimiter": ",",
///         }],
///     })
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
///         DataSetId = "example-id",
///         Name = "example-name",
///         ImportMode = "SPICE",
///         PhysicalTableMaps = new[]
///         {
///             new Aws.Quicksight.Inputs.DataSetPhysicalTableMapArgs
///             {
///                 PhysicalTableMapId = "example-id",
///                 S3Source = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceArgs
///                 {
///                     DataSourceArn = exampleAwsQuicksightDataSource.Arn,
///                     InputColumns = new[]
///                     {
///                         new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceInputColumnArgs
///                         {
///                             Name = "Column1",
///                             Type = "STRING",
///                         },
///                     },
///                     UploadSettings = new Aws.Quicksight.Inputs.DataSetPhysicalTableMapS3SourceUploadSettingsArgs
///                     {
///                         Format = "JSON",
///                     },
///                 },
///             },
///         },
///         RowLevelPermissionTagConfiguration = new Aws.Quicksight.Inputs.DataSetRowLevelPermissionTagConfigurationArgs
///         {
///             Status = "ENABLED",
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
///         },
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
/// 			DataSetId:  pulumi.String("example-id"),
/// 			Name:       pulumi.String("example-name"),
/// 			ImportMode: pulumi.String("SPICE"),
/// 			PhysicalTableMaps: quicksight.DataSetPhysicalTableMapArray{
/// 				&quicksight.DataSetPhysicalTableMapArgs{
/// 					PhysicalTableMapId: pulumi.String("example-id"),
/// 					S3Source: &quicksight.DataSetPhysicalTableMapS3SourceArgs{
/// 						DataSourceArn: pulumi.Any(exampleAwsQuicksightDataSource.Arn),
/// 						InputColumns: quicksight.DataSetPhysicalTableMapS3SourceInputColumnArray{
/// 							&quicksight.DataSetPhysicalTableMapS3SourceInputColumnArgs{
/// 								Name: pulumi.String("Column1"),
/// 								Type: pulumi.String("STRING"),
/// 							},
/// 						},
/// 						UploadSettings: &quicksight.DataSetPhysicalTableMapS3SourceUploadSettingsArgs{
/// 							Format: pulumi.String("JSON"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			RowLevelPermissionTagConfiguration: &quicksight.DataSetRowLevelPermissionTagConfigurationArgs{
/// 				Status: pulumi.String("ENABLED"),
/// 				TagRules: quicksight.DataSetRowLevelPermissionTagConfigurationTagRuleArray{
/// 					&quicksight.DataSetRowLevelPermissionTagConfigurationTagRuleArgs{
/// 						ColumnName:             pulumi.String("Column1"),
/// 						TagKey:                 pulumi.String("tagkey"),
/// 						MatchAllValue:          pulumi.String("*"),
/// 						TagMultiValueDelimiter: pulumi.String(","),
/// 					},
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
/// import com.pulumi.aws.quicksight.inputs.DataSetRowLevelPermissionTagConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .dataSetId("example-id")
///             .name("example-name")
///             .importMode("SPICE")
///             .physicalTableMaps(DataSetPhysicalTableMapArgs.builder()
///                 .physicalTableMapId("example-id")
///                 .s3Source(DataSetPhysicalTableMapS3SourceArgs.builder()
///                     .dataSourceArn(exampleAwsQuicksightDataSource.arn())
///                     .inputColumns(DataSetPhysicalTableMapS3SourceInputColumnArgs.builder()
///                         .name("Column1")
///                         .type("STRING")
///                         .build())
///                     .uploadSettings(DataSetPhysicalTableMapS3SourceUploadSettingsArgs.builder()
///                         .format("JSON")
///                         .build())
///                     .build())
///                 .build())
///             .rowLevelPermissionTagConfiguration(DataSetRowLevelPermissionTagConfigurationArgs.builder()
///                 .status("ENABLED")
///                 .tagRules(DataSetRowLevelPermissionTagConfigurationTagRuleArgs.builder()
///                     .columnName("Column1")
///                     .tagKey("tagkey")
///                     .matchAllValue("*")
///                     .tagMultiValueDelimiter(",")
///                     .build())
///                 .build())
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
///       dataSetId: example-id
///       name: example-name
///       importMode: SPICE
///       physicalTableMaps:
///         - physicalTableMapId: example-id
///           s3Source:
///             dataSourceArn: ${exampleAwsQuicksightDataSource.arn}
///             inputColumns:
///               - name: Column1
///                 type: STRING
///             uploadSettings:
///               format: JSON
///       rowLevelPermissionTagConfiguration:
///         status: ENABLED
///         tagRules:
///           - columnName: Column1
///             tagKey: tagkey
///             matchAllValue: '*'
///             tagMultiValueDelimiter: ','
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
  /// Amazon Resource Name (ARN) of the data set.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported. See column_groups.
  late final pulumi.Output<List<Map<String, dynamic>>?> columnGroups;

  /// A set of 1 or more definitions of a [ColumnLevelPermissionRule](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_ColumnLevelPermissionRule.html). See column_level_permission_rules.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  columnLevelPermissionRules;

  /// Identifier for the data set.
  late final pulumi.Output<String> dataSetId;

  /// The usage configuration to apply to child datasets that reference this dataset as a source. See data_set_usage_configuration.
  late final pulumi.Output<DataSetDataSetUsageConfiguration>
  dataSetUsageConfiguration;

  /// The folder that contains fields and nested subfolders for your dataset. See field_folders.
  late final pulumi.Output<List<Map<String, dynamic>>?> fieldFolders;

  /// Indicates whether you want to import the data into SPICE. Valid values are `SPICE` and `DIRECT_QUERY`.
  late final pulumi.Output<String> importMode;

  /// Configures the combination and transformation of the data from the physical tables. Maximum of 1 entry. See logical_table_map.
  late final pulumi.Output<List<Map<String, dynamic>>> logicalTableMaps;

  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// The final set of columns available for use in analyses and dashboards after all data preparation and transformation steps have been applied within the data set.  See `output_columns` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> outputColumns;

  /// A set of resource permissions on the data source. Maximum of 64 items. See permissions.
  late final pulumi.Output<List<Map<String, dynamic>>?> permissions;

  /// Declares the physical tables that are available in the underlying data sources. See physical_table_map.
  late final pulumi.Output<List<Map<String, dynamic>>?> physicalTableMaps;

  /// The refresh properties for the data set. **NOTE**: Only valid when `import_mode` is set to `SPICE`. See refresh_properties.
  late final pulumi.Output<DataSetRefreshProperties?> refreshProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The row-level security configuration for the data that you want to create. See row_level_permission_data_set.
  late final pulumi.Output<DataSetRowLevelPermissionDataSet?>
  rowLevelPermissionDataSet;

  /// The configuration of tags on a dataset to set row-level security. Row-level security tags are currently supported for anonymous embedding only. See row_level_permission_tag_configuration.
  late final pulumi.Output<DataSetRowLevelPermissionTagConfiguration?>
  rowLevelPermissionTagConfiguration;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    columnGroups = registerOutput<List<Map<String, dynamic>>?>('columnGroups');
    columnLevelPermissionRules = registerOutput<List<Map<String, dynamic>>?>(
      'columnLevelPermissionRules',
    );
    dataSetId = registerOutput<String>('dataSetId');
    dataSetUsageConfiguration =
        registerOutput<DataSetDataSetUsageConfiguration>(
          'dataSetUsageConfiguration',
        );
    fieldFolders = registerOutput<List<Map<String, dynamic>>?>('fieldFolders');
    importMode = registerOutput<String>('importMode');
    logicalTableMaps = registerOutput<List<Map<String, dynamic>>>(
      'logicalTableMaps',
    );
    this.name = registerOutput<String>('name');
    outputColumns = registerOutput<List<Map<String, dynamic>>>('outputColumns');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    physicalTableMaps = registerOutput<List<Map<String, dynamic>>?>(
      'physicalTableMaps',
    );
    refreshProperties = registerOutput<DataSetRefreshProperties?>(
      'refreshProperties',
    );
    region = registerOutput<String>('region');
    rowLevelPermissionDataSet =
        registerOutput<DataSetRowLevelPermissionDataSet?>(
          'rowLevelPermissionDataSet',
        );
    rowLevelPermissionTagConfiguration =
        registerOutput<DataSetRowLevelPermissionTagConfiguration?>(
          'rowLevelPermissionTagConfiguration',
        );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    useAs = registerOutput<String?>('useAs');
  }

  /// Gets an existing [DataSet] resource's state with the given [name] and [id].
  static DataSet get(
    String name,
    pulumi.Input<String> id, {
    DataSetState? state,
  }) {
    return DataSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    columnGroups = registerOutput<List<Map<String, dynamic>>?>('columnGroups');
    columnLevelPermissionRules = registerOutput<List<Map<String, dynamic>>?>(
      'columnLevelPermissionRules',
    );
    dataSetId = registerOutput<String>('dataSetId');
    dataSetUsageConfiguration =
        registerOutput<DataSetDataSetUsageConfiguration>(
          'dataSetUsageConfiguration',
        );
    fieldFolders = registerOutput<List<Map<String, dynamic>>?>('fieldFolders');
    importMode = registerOutput<String>('importMode');
    logicalTableMaps = registerOutput<List<Map<String, dynamic>>>(
      'logicalTableMaps',
    );
    this.name = registerOutput<String>('name');
    outputColumns = registerOutput<List<Map<String, dynamic>>>('outputColumns');
    permissions = registerOutput<List<Map<String, dynamic>>?>('permissions');
    physicalTableMaps = registerOutput<List<Map<String, dynamic>>?>(
      'physicalTableMaps',
    );
    refreshProperties = registerOutput<DataSetRefreshProperties?>(
      'refreshProperties',
    );
    region = registerOutput<String>('region');
    rowLevelPermissionDataSet =
        registerOutput<DataSetRowLevelPermissionDataSet?>(
          'rowLevelPermissionDataSet',
        );
    rowLevelPermissionTagConfiguration =
        registerOutput<DataSetRowLevelPermissionTagConfiguration?>(
          'rowLevelPermissionTagConfiguration',
        );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    useAs = registerOutput<String?>('useAs');
  }
}
