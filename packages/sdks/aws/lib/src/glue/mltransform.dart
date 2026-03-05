import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltransform_args.dart';
import 'mltransform_parameters.dart';
import 'mltransform_state.dart';

/// Provides a Glue ML Transform resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testCatalogDatabase = new aws.glue.CatalogDatabase("test", {name: "example"});
/// const testCatalogTable = new aws.glue.CatalogTable("test", {
///     name: "example",
///     databaseName: testCatalogDatabase.name,
///     owner: "my_owner",
///     retention: 1,
///     tableType: "VIRTUAL_VIEW",
///     viewExpandedText: "view_expanded_text_1",
///     viewOriginalText: "view_original_text_1",
///     storageDescriptor: {
///         bucketColumns: ["bucket_column_1"],
///         compressed: false,
///         inputFormat: "SequenceFileInputFormat",
///         location: "my_location",
///         numberOfBuckets: 1,
///         outputFormat: "SequenceFileInputFormat",
///         storedAsSubDirectories: false,
///         parameters: {
///             param1: "param1_val",
///         },
///         columns: [
///             {
///                 name: "my_column_1",
///                 type: "int",
///                 comment: "my_column1_comment",
///             },
///             {
///                 name: "my_column_2",
///                 type: "string",
///                 comment: "my_column2_comment",
///             },
///         ],
///         serDeInfo: {
///             name: "ser_de_name",
///             parameters: {
///                 param1: "param_val_1",
///             },
///             serializationLibrary: "org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe",
///         },
///         sortColumns: [{
///             column: "my_column_1",
///             sortOrder: 1,
///         }],
///         skewedInfo: {
///             skewedColumnNames: ["my_column_1"],
///             skewedColumnValueLocationMaps: {
///                 my_column_1: "my_column_1_val_loc_map",
///             },
///             skewedColumnValues: ["skewed_val_1"],
///         },
///     },
///     partitionKeys: [
///         {
///             name: "my_column_1",
///             type: "int",
///             comment: "my_column_1_comment",
///         },
///         {
///             name: "my_column_2",
///             type: "string",
///             comment: "my_column_2_comment",
///         },
///     ],
///     parameters: {
///         param1: "param1_val",
///     },
/// });
/// const test = new aws.glue.MLTransform("test", {
///     name: "example",
///     roleArn: testAwsIamRole.arn,
///     inputRecordTables: [{
///         databaseName: testCatalogTable.databaseName,
///         tableName: testCatalogTable.name,
///     }],
///     parameters: {
///         transformType: "FIND_MATCHES",
///         findMatchesParameters: {
///             primaryKeyColumnName: "my_column_1",
///         },
///     },
/// }, {
///     dependsOn: [testAwsIamRolePolicyAttachment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_catalog_database = aws.glue.CatalogDatabase("test", name="example")
/// test_catalog_table = aws.glue.CatalogTable("test",
///     name="example",
///     database_name=test_catalog_database.name,
///     owner="my_owner",
///     retention=1,
///     table_type="VIRTUAL_VIEW",
///     view_expanded_text="view_expanded_text_1",
///     view_original_text="view_original_text_1",
///     storage_descriptor={
///         "bucket_columns": ["bucket_column_1"],
///         "compressed": False,
///         "input_format": "SequenceFileInputFormat",
///         "location": "my_location",
///         "number_of_buckets": 1,
///         "output_format": "SequenceFileInputFormat",
///         "stored_as_sub_directories": False,
///         "parameters": {
///             "param1": "param1_val",
///         },
///         "columns": [
///             {
///                 "name": "my_column_1",
///                 "type": "int",
///                 "comment": "my_column1_comment",
///             },
///             {
///                 "name": "my_column_2",
///                 "type": "string",
///                 "comment": "my_column2_comment",
///             },
///         ],
///         "ser_de_info": {
///             "name": "ser_de_name",
///             "parameters": {
///                 "param1": "param_val_1",
///             },
///             "serialization_library": "org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe",
///         },
///         "sort_columns": [{
///             "column": "my_column_1",
///             "sort_order": 1,
///         }],
///         "skewed_info": {
///             "skewed_column_names": ["my_column_1"],
///             "skewed_column_value_location_maps": {
///                 "my_column_1": "my_column_1_val_loc_map",
///             },
///             "skewed_column_values": ["skewed_val_1"],
///         },
///     },
///     partition_keys=[
///         {
///             "name": "my_column_1",
///             "type": "int",
///             "comment": "my_column_1_comment",
///         },
///         {
///             "name": "my_column_2",
///             "type": "string",
///             "comment": "my_column_2_comment",
///         },
///     ],
///     parameters={
///         "param1": "param1_val",
///     })
/// test = aws.glue.MLTransform("test",
///     name="example",
///     role_arn=test_aws_iam_role["arn"],
///     input_record_tables=[{
///         "database_name": test_catalog_table.database_name,
///         "table_name": test_catalog_table.name,
///     }],
///     parameters={
///         "transform_type": "FIND_MATCHES",
///         "find_matches_parameters": {
///             "primary_key_column_name": "my_column_1",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[test_aws_iam_role_policy_attachment]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCatalogDatabase = new Aws.Glue.CatalogDatabase("test", new()
///     {
///         Name = "example",
///     });
///
///     var testCatalogTable = new Aws.Glue.CatalogTable("test", new()
///     {
///         Name = "example",
///         DatabaseName = testCatalogDatabase.Name,
///         Owner = "my_owner",
///         Retention = 1,
///         TableType = "VIRTUAL_VIEW",
///         ViewExpandedText = "view_expanded_text_1",
///         ViewOriginalText = "view_original_text_1",
///         StorageDescriptor = new Aws.Glue.Inputs.CatalogTableStorageDescriptorArgs
///         {
///             BucketColumns = new[]
///             {
///                 "bucket_column_1",
///             },
///             Compressed = false,
///             InputFormat = "SequenceFileInputFormat",
///             Location = "my_location",
///             NumberOfBuckets = 1,
///             OutputFormat = "SequenceFileInputFormat",
///             StoredAsSubDirectories = false,
///             Parameters =
///             {
///                 { "param1", "param1_val" },
///             },
///             Columns = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_column_1",
///                     Type = "int",
///                     Comment = "my_column1_comment",
///                 },
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorColumnArgs
///                 {
///                     Name = "my_column_2",
///                     Type = "string",
///                     Comment = "my_column2_comment",
///                 },
///             },
///             SerDeInfo = new Aws.Glue.Inputs.CatalogTableStorageDescriptorSerDeInfoArgs
///             {
///                 Name = "ser_de_name",
///                 Parameters =
///                 {
///                     { "param1", "param_val_1" },
///                 },
///                 SerializationLibrary = "org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe",
///             },
///             SortColumns = new[]
///             {
///                 new Aws.Glue.Inputs.CatalogTableStorageDescriptorSortColumnArgs
///                 {
///                     Column = "my_column_1",
///                     SortOrder = 1,
///                 },
///             },
///             SkewedInfo = new Aws.Glue.Inputs.CatalogTableStorageDescriptorSkewedInfoArgs
///             {
///                 SkewedColumnNames = new[]
///                 {
///                     "my_column_1",
///                 },
///                 SkewedColumnValueLocationMaps =
///                 {
///                     { "my_column_1", "my_column_1_val_loc_map" },
///                 },
///                 SkewedColumnValues = new[]
///                 {
///                     "skewed_val_1",
///                 },
///             },
///         },
///         PartitionKeys = new[]
///         {
///             new Aws.Glue.Inputs.CatalogTablePartitionKeyArgs
///             {
///                 Name = "my_column_1",
///                 Type = "int",
///                 Comment = "my_column_1_comment",
///             },
///             new Aws.Glue.Inputs.CatalogTablePartitionKeyArgs
///             {
///                 Name = "my_column_2",
///                 Type = "string",
///                 Comment = "my_column_2_comment",
///             },
///         },
///         Parameters =
///         {
///             { "param1", "param1_val" },
///         },
///     });
///
///     var test = new Aws.Glue.MLTransform("test", new()
///     {
///         Name = "example",
///         RoleArn = testAwsIamRole.Arn,
///         InputRecordTables = new[]
///         {
///             new Aws.Glue.Inputs.MLTransformInputRecordTableArgs
///             {
///                 DatabaseName = testCatalogTable.DatabaseName,
///                 TableName = testCatalogTable.Name,
///             },
///         },
///         Parameters = new Aws.Glue.Inputs.MLTransformParametersArgs
///         {
///             TransformType = "FIND_MATCHES",
///             FindMatchesParameters = new Aws.Glue.Inputs.MLTransformParametersFindMatchesParametersArgs
///             {
///                 PrimaryKeyColumnName = "my_column_1",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testAwsIamRolePolicyAttachment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testCatalogDatabase, err := glue.NewCatalogDatabase(ctx, "test", &glue.CatalogDatabaseArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testCatalogTable, err := glue.NewCatalogTable(ctx, "test", &glue.CatalogTableArgs{
/// 			Name:             pulumi.String("example"),
/// 			DatabaseName:     testCatalogDatabase.Name,
/// 			Owner:            pulumi.String("my_owner"),
/// 			Retention:        pulumi.Int(1),
/// 			TableType:        pulumi.String("VIRTUAL_VIEW"),
/// 			ViewExpandedText: pulumi.String("view_expanded_text_1"),
/// 			ViewOriginalText: pulumi.String("view_original_text_1"),
/// 			StorageDescriptor: &glue.CatalogTableStorageDescriptorArgs{
/// 				BucketColumns: pulumi.StringArray{
/// 					pulumi.String("bucket_column_1"),
/// 				},
/// 				Compressed:             pulumi.Bool(false),
/// 				InputFormat:            pulumi.String("SequenceFileInputFormat"),
/// 				Location:               pulumi.String("my_location"),
/// 				NumberOfBuckets:        pulumi.Int(1),
/// 				OutputFormat:           pulumi.String("SequenceFileInputFormat"),
/// 				StoredAsSubDirectories: pulumi.Bool(false),
/// 				Parameters: pulumi.StringMap{
/// 					"param1": pulumi.String("param1_val"),
/// 				},
/// 				Columns: glue.CatalogTableStorageDescriptorColumnArray{
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("my_column_1"),
/// 						Type:    pulumi.String("int"),
/// 						Comment: pulumi.String("my_column1_comment"),
/// 					},
/// 					&glue.CatalogTableStorageDescriptorColumnArgs{
/// 						Name:    pulumi.String("my_column_2"),
/// 						Type:    pulumi.String("string"),
/// 						Comment: pulumi.String("my_column2_comment"),
/// 					},
/// 				},
/// 				SerDeInfo: &glue.CatalogTableStorageDescriptorSerDeInfoArgs{
/// 					Name: pulumi.String("ser_de_name"),
/// 					Parameters: pulumi.StringMap{
/// 						"param1": pulumi.String("param_val_1"),
/// 					},
/// 					SerializationLibrary: pulumi.String("org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe"),
/// 				},
/// 				SortColumns: glue.CatalogTableStorageDescriptorSortColumnArray{
/// 					&glue.CatalogTableStorageDescriptorSortColumnArgs{
/// 						Column:    pulumi.String("my_column_1"),
/// 						SortOrder: pulumi.Int(1),
/// 					},
/// 				},
/// 				SkewedInfo: &glue.CatalogTableStorageDescriptorSkewedInfoArgs{
/// 					SkewedColumnNames: pulumi.StringArray{
/// 						pulumi.String("my_column_1"),
/// 					},
/// 					SkewedColumnValueLocationMaps: pulumi.StringMap{
/// 						"my_column_1": pulumi.String("my_column_1_val_loc_map"),
/// 					},
/// 					SkewedColumnValues: pulumi.StringArray{
/// 						pulumi.String("skewed_val_1"),
/// 					},
/// 				},
/// 			},
/// 			PartitionKeys: glue.CatalogTablePartitionKeyArray{
/// 				&glue.CatalogTablePartitionKeyArgs{
/// 					Name:    pulumi.String("my_column_1"),
/// 					Type:    pulumi.String("int"),
/// 					Comment: pulumi.String("my_column_1_comment"),
/// 				},
/// 				&glue.CatalogTablePartitionKeyArgs{
/// 					Name:    pulumi.String("my_column_2"),
/// 					Type:    pulumi.String("string"),
/// 					Comment: pulumi.String("my_column_2_comment"),
/// 				},
/// 			},
/// 			Parameters: pulumi.StringMap{
/// 				"param1": pulumi.String("param1_val"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewMLTransform(ctx, "test", &glue.MLTransformArgs{
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(testAwsIamRole.Arn),
/// 			InputRecordTables: glue.MLTransformInputRecordTableArray{
/// 				&glue.MLTransformInputRecordTableArgs{
/// 					DatabaseName: testCatalogTable.DatabaseName,
/// 					TableName:    testCatalogTable.Name,
/// 				},
/// 			},
/// 			Parameters: &glue.MLTransformParametersArgs{
/// 				TransformType: pulumi.String("FIND_MATCHES"),
/// 				FindMatchesParameters: &glue.MLTransformParametersFindMatchesParametersArgs{
/// 					PrimaryKeyColumnName: pulumi.String("my_column_1"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testAwsIamRolePolicyAttachment,
/// 		}))
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
/// import com.pulumi.aws.glue.CatalogDatabase;
/// import com.pulumi.aws.glue.CatalogDatabaseArgs;
/// import com.pulumi.aws.glue.CatalogTable;
/// import com.pulumi.aws.glue.CatalogTableArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorSerDeInfoArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTableStorageDescriptorSkewedInfoArgs;
/// import com.pulumi.aws.glue.inputs.CatalogTablePartitionKeyArgs;
/// import com.pulumi.aws.glue.MLTransform;
/// import com.pulumi.aws.glue.MLTransformArgs;
/// import com.pulumi.aws.glue.inputs.MLTransformInputRecordTableArgs;
/// import com.pulumi.aws.glue.inputs.MLTransformParametersArgs;
/// import com.pulumi.aws.glue.inputs.MLTransformParametersFindMatchesParametersArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var testCatalogDatabase = new CatalogDatabase("testCatalogDatabase", CatalogDatabaseArgs.builder()
///             .name("example")
///             .build());
///
///         var testCatalogTable = new CatalogTable("testCatalogTable", CatalogTableArgs.builder()
///             .name("example")
///             .databaseName(testCatalogDatabase.name())
///             .owner("my_owner")
///             .retention(1)
///             .tableType("VIRTUAL_VIEW")
///             .viewExpandedText("view_expanded_text_1")
///             .viewOriginalText("view_original_text_1")
///             .storageDescriptor(CatalogTableStorageDescriptorArgs.builder()
///                 .bucketColumns("bucket_column_1")
///                 .compressed(false)
///                 .inputFormat("SequenceFileInputFormat")
///                 .location("my_location")
///                 .numberOfBuckets(1)
///                 .outputFormat("SequenceFileInputFormat")
///                 .storedAsSubDirectories(false)
///                 .parameters(Map.of("param1", "param1_val"))
///                 .columns(
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_column_1")
///                         .type("int")
///                         .comment("my_column1_comment")
///                         .build(),
///                     CatalogTableStorageDescriptorColumnArgs.builder()
///                         .name("my_column_2")
///                         .type("string")
///                         .comment("my_column2_comment")
///                         .build())
///                 .serDeInfo(CatalogTableStorageDescriptorSerDeInfoArgs.builder()
///                     .name("ser_de_name")
///                     .parameters(Map.of("param1", "param_val_1"))
///                     .serializationLibrary("org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe")
///                     .build())
///                 .sortColumns(CatalogTableStorageDescriptorSortColumnArgs.builder()
///                     .column("my_column_1")
///                     .sortOrder(1)
///                     .build())
///                 .skewedInfo(CatalogTableStorageDescriptorSkewedInfoArgs.builder()
///                     .skewedColumnNames("my_column_1")
///                     .skewedColumnValueLocationMaps(Map.of("my_column_1", "my_column_1_val_loc_map"))
///                     .skewedColumnValues("skewed_val_1")
///                     .build())
///                 .build())
///             .partitionKeys(
///                 CatalogTablePartitionKeyArgs.builder()
///                     .name("my_column_1")
///                     .type("int")
///                     .comment("my_column_1_comment")
///                     .build(),
///                 CatalogTablePartitionKeyArgs.builder()
///                     .name("my_column_2")
///                     .type("string")
///                     .comment("my_column_2_comment")
///                     .build())
///             .parameters(Map.of("param1", "param1_val"))
///             .build());
///
///         var test = new MLTransform("test", MLTransformArgs.builder()
///             .name("example")
///             .roleArn(testAwsIamRole.arn())
///             .inputRecordTables(MLTransformInputRecordTableArgs.builder()
///                 .databaseName(testCatalogTable.databaseName())
///                 .tableName(testCatalogTable.name())
///                 .build())
///             .parameters(MLTransformParametersArgs.builder()
///                 .transformType("FIND_MATCHES")
///                 .findMatchesParameters(MLTransformParametersFindMatchesParametersArgs.builder()
///                     .primaryKeyColumnName("my_column_1")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testAwsIamRolePolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:glue:MLTransform
///     properties:
///       name: example
///       roleArn: ${testAwsIamRole.arn}
///       inputRecordTables:
///         - databaseName: ${testCatalogTable.databaseName}
///           tableName: ${testCatalogTable.name}
///       parameters:
///         transformType: FIND_MATCHES
///         findMatchesParameters:
///           primaryKeyColumnName: my_column_1
///     options:
///       dependsOn:
///         - ${testAwsIamRolePolicyAttachment}
///   testCatalogDatabase:
///     type: aws:glue:CatalogDatabase
///     name: test
///     properties:
///       name: example
///   testCatalogTable:
///     type: aws:glue:CatalogTable
///     name: test
///     properties:
///       name: example
///       databaseName: ${testCatalogDatabase.name}
///       owner: my_owner
///       retention: 1
///       tableType: VIRTUAL_VIEW
///       viewExpandedText: view_expanded_text_1
///       viewOriginalText: view_original_text_1
///       storageDescriptor:
///         bucketColumns:
///           - bucket_column_1
///         compressed: false
///         inputFormat: SequenceFileInputFormat
///         location: my_location
///         numberOfBuckets: 1
///         outputFormat: SequenceFileInputFormat
///         storedAsSubDirectories: false
///         parameters:
///           param1: param1_val
///         columns:
///           - name: my_column_1
///             type: int
///             comment: my_column1_comment
///           - name: my_column_2
///             type: string
///             comment: my_column2_comment
///         serDeInfo:
///           name: ser_de_name
///           parameters:
///             param1: param_val_1
///           serializationLibrary: org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe
///         sortColumns:
///           - column: my_column_1
///             sortOrder: 1
///         skewedInfo:
///           skewedColumnNames:
///             - my_column_1
///           skewedColumnValueLocationMaps:
///             my_column_1: my_column_1_val_loc_map
///           skewedColumnValues:
///             - skewed_val_1
///       partitionKeys:
///         - name: my_column_1
///           type: int
///           comment: my_column_1_comment
///         - name: my_column_2
///           type: string
///           comment: my_column_2_comment
///       parameters:
///         param1: param1_val
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue ML Transforms using `id`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/mLTransform:MLTransform example tfm-c2cafbe83b1c575f49eaca9939220e2fcd58e2d5
/// ```
class MLTransform extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of Glue ML Transform.
  late final pulumi.Output<String> arn;

  /// Description of the ML Transform.
  late final pulumi.Output<String?> description;

  /// The version of glue to use, for example "1.0". For information about available versions, see the [AWS Glue Release Notes](https://docs.aws.amazon.com/glue/latest/dg/release-notes.html).
  late final pulumi.Output<String> glueVersion;

  /// A list of AWS Glue table definitions used by the transform. see Input Record Tables.
  late final pulumi.Output<List<Map<String, dynamic>>> inputRecordTables;

  /// The number of labels available for this transform.
  late final pulumi.Output<int> labelCount;

  /// The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from `2` to `100` DPUs; the default is `10`. `max_capacity` is a mutually exclusive option with `number_of_workers` and `worker_type`.
  late final pulumi.Output<double> maxCapacity;

  /// The maximum number of times to retry this ML Transform if it fails.
  late final pulumi.Output<int?> maxRetries;

  /// The name you assign to this ML Transform. It must be unique in your account.
  late final pulumi.Output<String> name;

  /// The number of workers of a defined `worker_type` that are allocated when an ML Transform runs. Required with `worker_type`.
  late final pulumi.Output<int?> numberOfWorkers;

  /// The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters.
  late final pulumi.Output<MLTransformParameters> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the IAM role associated with this ML Transform.
  late final pulumi.Output<String> roleArn;

  /// The object that represents the schema that this transform accepts. see Schema.
  late final pulumi.Output<List<Map<String, dynamic>>> schemas;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ML Transform timeout in minutes. The default is 2880 minutes (48 hours).
  late final pulumi.Output<int?> timeout;

  /// The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of `Standard`, `G.1X`, or `G.2X`. Required with `number_of_workers`.
  late final pulumi.Output<String?> workerType;

  /// Creates a new [MLTransform].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MLTransform]. {@macro pulumi_glue_m_ltransform_mltransform_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MLTransform(
    String name, {
    MLTransformArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/mLTransform:MLTransform',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    glueVersion = registerOutput<String>('glueVersion');
    inputRecordTables = registerOutput<List<Map<String, dynamic>>>(
      'inputRecordTables',
    );
    labelCount = registerOutput<int>('labelCount');
    maxCapacity = registerOutput<double>('maxCapacity');
    maxRetries = registerOutput<int?>('maxRetries');
    this.name = registerOutput<String>('name');
    numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    parameters = registerOutput<MLTransformParameters>(
      'parameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MLTransformParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    schemas = registerOutput<List<Map<String, dynamic>>>('schemas');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeout = registerOutput<int?>('timeout');
    workerType = registerOutput<String?>('workerType');
  }

  /// Gets an existing [MLTransform] resource's state with the given [name] and [id].
  static MLTransform get(
    String name,
    pulumi.Input<String> id, {
    MLTransformState? state,
  }) {
    return MLTransform._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MLTransform._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/mLTransform:MLTransform',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    glueVersion = registerOutput<String>('glueVersion');
    inputRecordTables = registerOutput<List<Map<String, dynamic>>>(
      'inputRecordTables',
    );
    labelCount = registerOutput<int>('labelCount');
    maxCapacity = registerOutput<double>('maxCapacity');
    maxRetries = registerOutput<int?>('maxRetries');
    this.name = registerOutput<String>('name');
    numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    parameters = registerOutput<MLTransformParameters>(
      'parameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MLTransformParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    schemas = registerOutput<List<Map<String, dynamic>>>('schemas');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeout = registerOutput<int?>('timeout');
    workerType = registerOutput<String?>('workerType');
  }
}
