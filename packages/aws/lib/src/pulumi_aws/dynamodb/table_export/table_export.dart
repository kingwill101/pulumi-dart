import 'package:pulumi/pulumi.dart';
import '../table_export_incremental_export_specification/table_export_incremental_export_specification.dart';
import 'table_export_args.dart';

/// Resource for managing an AWS DynamoDB Table Export. Terraform will wait until the Table export reaches a status of `COMPLETED` or `FAILED`.
///
/// See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.HowItWorks.html) for more information on how this process works.
///
/// > **TIP:** Point-in-time Recovery must be enabled on the target DynamoDB Table.
///
/// > **NOTE:** Once a AWS DynamoDB Table Export has been created it is immutable. The AWS API does not delete this resource. When you run destroy the provider will remove the resource from the Terraform state, no exported data will be deleted.
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
/// const example = new aws.s3.Bucket("example", {
/// bucketPrefix: "example",
/// forceDestroy: true,
/// });
/// const exampleTable = new aws.dynamodb.Table("example", {
/// name: "example-table-1",
/// billingMode: "PAY_PER_REQUEST",
/// hashKey: "user_id",
/// attributes: [{
/// name: "user_id",
/// type: "S",
/// }],
/// pointInTimeRecovery: {
/// enabled: true,
/// },
/// });
/// const exampleTableExport = new aws.dynamodb.TableExport("example", {
/// tableArn: exampleTable.arn,
/// s3Bucket: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example",
/// bucket_prefix="example",
/// force_destroy=True)
/// example_table = aws.dynamodb.Table("example",
/// name="example-table-1",
/// billing_mode="PAY_PER_REQUEST",
/// hash_key="user_id",
/// attributes=[{
/// "name": "user_id",
/// "type": "S",
/// }],
/// point_in_time_recovery={
/// "enabled": True,
/// })
/// example_table_export = aws.dynamodb.TableExport("example",
/// table_arn=example_table.arn,
/// s3_bucket=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketPrefix = "example",
/// ForceDestroy = true,
/// });
///
/// var exampleTable = new Aws.DynamoDB.Table("example", new()
/// {
/// Name = "example-table-1",
/// BillingMode = "PAY_PER_REQUEST",
/// HashKey = "user_id",
/// Attributes = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "user_id",
/// Type = "S",
/// },
/// },
/// PointInTimeRecovery = new Aws.DynamoDB.Inputs.TablePointInTimeRecoveryArgs
/// {
/// Enabled = true,
/// },
/// });
///
/// var exampleTableExport = new Aws.DynamoDB.TableExport("example", new()
/// {
/// TableArn = exampleTable.Arn,
/// S3Bucket = example.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// BucketPrefix: pulumi.String("example"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTable, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// Name:        pulumi.String("example-table-1"),
/// BillingMode: pulumi.String("PAY_PER_REQUEST"),
/// HashKey:     pulumi.String("user_id"),
/// Attributes: dynamodb.TableAttributeArray{
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("user_id"),
/// Type: pulumi.String("S"),
/// },
/// },
/// PointInTimeRecovery: &dynamodb.TablePointInTimeRecoveryArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dynamodb.NewTableExport(ctx, "example", &dynamodb.TableExportArgs{
/// TableArn: exampleTable.Arn,
/// S3Bucket: example.ID(),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
/// import com.pulumi.aws.dynamodb.inputs.TablePointInTimeRecoveryArgs;
/// import com.pulumi.aws.dynamodb.TableExport;
/// import com.pulumi.aws.dynamodb.TableExportArgs;
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
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucketPrefix("example")
/// .forceDestroy(true)
/// .build());
///
/// var exampleTable = new Table("exampleTable", TableArgs.builder()
/// .name("example-table-1")
/// .billingMode("PAY_PER_REQUEST")
/// .hashKey("user_id")
/// .attributes(TableAttributeArgs.builder()
/// .name("user_id")
/// .type("S")
/// .build())
/// .pointInTimeRecovery(TablePointInTimeRecoveryArgs.builder()
/// .enabled(true)
/// .build())
/// .build());
///
/// var exampleTableExport = new TableExport("exampleTableExport", TableExportArgs.builder()
/// .tableArn(exampleTable.arn())
/// .s3Bucket(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucketPrefix: example
/// forceDestroy: true
/// exampleTable:
/// type: aws:dynamodb:Table
/// name: example
/// properties:
/// name: example-table-1
/// billingMode: PAY_PER_REQUEST
/// hashKey: user_id
/// attributes:
/// - name: user_id
/// type: S
/// pointInTimeRecovery:
/// enabled: true
/// exampleTableExport:
/// type: aws:dynamodb:TableExport
/// name: example
/// properties:
/// tableArn: ${exampleTable.arn}
/// s3Bucket: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example with export time
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.TableExport("example", {
/// exportTime: "2023-04-02T11:30:13+01:00",
/// s3Bucket: exampleAwsS3Bucket.id,
/// tableArn: exampleAwsDynamodbTable.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.TableExport("example",
/// export_time="2023-04-02T11:30:13+01:00",
/// s3_bucket=example_aws_s3_bucket["id"],
/// table_arn=example_aws_dynamodb_table["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DynamoDB.TableExport("example", new()
/// {
/// ExportTime = "2023-04-02T11:30:13+01:00",
/// S3Bucket = exampleAwsS3Bucket.Id,
/// TableArn = exampleAwsDynamodbTable.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dynamodb.NewTableExport(ctx, "example", &dynamodb.TableExportArgs{
/// ExportTime: pulumi.String("2023-04-02T11:30:13+01:00"),
/// S3Bucket:   pulumi.Any(exampleAwsS3Bucket.Id),
/// TableArn:   pulumi.Any(exampleAwsDynamodbTable.Arn),
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
/// import com.pulumi.aws.dynamodb.TableExport;
/// import com.pulumi.aws.dynamodb.TableExportArgs;
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
/// var example = new TableExport("example", TableExportArgs.builder()
/// .exportTime("2023-04-02T11:30:13+01:00")
/// .s3Bucket(exampleAwsS3Bucket.id())
/// .tableArn(exampleAwsDynamodbTable.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:TableExport
/// properties:
/// exportTime: 2023-04-02T11:30:13+01:00
/// s3Bucket: ${exampleAwsS3Bucket.id}
/// tableArn: ${exampleAwsDynamodbTable.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Incremental export
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.TableExport("example", {
/// exportType: "INCREMENTAL_EXPORT",
/// s3Bucket: exampleAwsS3Bucket.id,
/// tableArn: exampleAwsDynamodbTable.arn,
/// incrementalExportSpecification: {
/// exportFromTime: "2025-02-09T12:00:00+01:00",
/// exportToTime: "2025-02-09T13:00:00+01:00",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.TableExport("example",
/// export_type="INCREMENTAL_EXPORT",
/// s3_bucket=example_aws_s3_bucket["id"],
/// table_arn=example_aws_dynamodb_table["arn"],
/// incremental_export_specification={
/// "export_from_time": "2025-02-09T12:00:00+01:00",
/// "export_to_time": "2025-02-09T13:00:00+01:00",
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
/// var example = new Aws.DynamoDB.TableExport("example", new()
/// {
/// ExportType = "INCREMENTAL_EXPORT",
/// S3Bucket = exampleAwsS3Bucket.Id,
/// TableArn = exampleAwsDynamodbTable.Arn,
/// IncrementalExportSpecification = new Aws.DynamoDB.Inputs.TableExportIncrementalExportSpecificationArgs
/// {
/// ExportFromTime = "2025-02-09T12:00:00+01:00",
/// ExportToTime = "2025-02-09T13:00:00+01:00",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dynamodb.NewTableExport(ctx, "example", &dynamodb.TableExportArgs{
/// ExportType: pulumi.String("INCREMENTAL_EXPORT"),
/// S3Bucket:   pulumi.Any(exampleAwsS3Bucket.Id),
/// TableArn:   pulumi.Any(exampleAwsDynamodbTable.Arn),
/// IncrementalExportSpecification: &dynamodb.TableExportIncrementalExportSpecificationArgs{
/// ExportFromTime: pulumi.String("2025-02-09T12:00:00+01:00"),
/// ExportToTime:   pulumi.String("2025-02-09T13:00:00+01:00"),
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
/// import com.pulumi.aws.dynamodb.TableExport;
/// import com.pulumi.aws.dynamodb.TableExportArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableExportIncrementalExportSpecificationArgs;
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
/// var example = new TableExport("example", TableExportArgs.builder()
/// .exportType("INCREMENTAL_EXPORT")
/// .s3Bucket(exampleAwsS3Bucket.id())
/// .tableArn(exampleAwsDynamodbTable.arn())
/// .incrementalExportSpecification(TableExportIncrementalExportSpecificationArgs.builder()
/// .exportFromTime("2025-02-09T12:00:00+01:00")
/// .exportToTime("2025-02-09T13:00:00+01:00")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:TableExport
/// properties:
/// exportType: INCREMENTAL_EXPORT
/// s3Bucket: ${exampleAwsS3Bucket.id}
/// tableArn: ${exampleAwsDynamodbTable.arn}
/// incrementalExportSpecification:
/// exportFromTime: 2025-02-09T12:00:00+01:00
/// exportToTime: 2025-02-09T13:00:00+01:00
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DynamoDB table export.
///
///
/// Using `pulumi import`, import DynamoDB table exports using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/tableExport:TableExport example arn:aws:dynamodb:us-west-2:12345678911:table/my-table-1/export/01580735656614-2c2f422e
/// ```
class TableExport extends CustomResource {
  /// ARN of the Table Export.
  late final Output<String> arn;

  /// Billable size of the table export.
  late final Output<int> billedSizeInBytes;

  /// Time at which the export task completed.
  late final Output<String> endTime;

  /// Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  late final Output<String?> exportFormat;

  /// Status of the export - export can be in one of the following states `IN_PROGRESS`, `COMPLETED`, or `FAILED`.
  late final Output<String> exportStatus;

  /// Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  late final Output<String> exportTime;

  /// Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the <span pulumi-lang-nodejs="`incrementalExportSpecification`" pulumi-lang-dotnet="`IncrementalExportSpecification`" pulumi-lang-go="`incrementalExportSpecification`" pulumi-lang-python="`incremental_export_specification`" pulumi-lang-yaml="`incrementalExportSpecification`" pulumi-lang-java="`incrementalExportSpecification`">`incremental_export_specification`</span> argument must also be provided.
  /// <span pulumi-lang-nodejs="`incrementalExportSpecification`" pulumi-lang-dotnet="`IncrementalExportSpecification`" pulumi-lang-go="`incrementalExportSpecification`" pulumi-lang-python="`incremental_export_specification`" pulumi-lang-yaml="`incrementalExportSpecification`" pulumi-lang-java="`incrementalExportSpecification`">`incremental_export_specification`</span> - (Optional, Forces new resource) Parameters specific to an incremental export. See <span pulumi-lang-nodejs="`incrementalExportSpecification`" pulumi-lang-dotnet="`IncrementalExportSpecification`" pulumi-lang-go="`incrementalExportSpecification`" pulumi-lang-python="`incremental_export_specification`" pulumi-lang-yaml="`incrementalExportSpecification`" pulumi-lang-java="`incrementalExportSpecification`">`incremental_export_specification`</span> Block for details.
  late final Output<String> exportType;
  late final Output<TableExportIncrementalExportSpecification?>
      incrementalExportSpecification;

  /// Number of items exported.
  late final Output<int> itemCount;

  /// Name of the manifest file for the export task. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Manifest) for more information on this manifest file.
  late final Output<String> manifestFilesS3Key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the Amazon S3 bucket to export the snapshot to. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport_Requesting.html#S3DataExport_Requesting_Permissions) for information on how configure this S3 bucket.
  late final Output<String> s3Bucket;

  /// ID of the AWS account that owns the bucket the export will be stored in.
  late final Output<String> s3BucketOwner;

  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  late final Output<String> s3Prefix;

  /// Type of encryption used on the bucket where export data will be stored. Valid values are: `AES256`, `KMS`.
  late final Output<String> s3SseAlgorithm;

  /// ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  late final Output<String?> s3SseKmsKeyId;

  /// Time at which the export task began.
  late final Output<String> startTime;

  /// ARN associated with the table to export.
  ///
  /// The following arguments are optional:
  late final Output<String> tableArn;

  TableExport(
    String name, {
    TableExportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tableExport:TableExport',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.billedSizeInBytes = Output.createUnknown<int>();
    this.endTime = Output.createUnknown<String>();
    this.exportFormat = Output.createUnknown<String?>();
    this.exportStatus = Output.createUnknown<String>();
    this.exportTime = Output.createUnknown<String>();
    this.exportType = Output.createUnknown<String>();
    this.incrementalExportSpecification =
        Output.createUnknown<TableExportIncrementalExportSpecification?>();
    this.itemCount = Output.createUnknown<int>();
    this.manifestFilesS3Key = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.s3Bucket = Output.createUnknown<String>();
    this.s3BucketOwner = Output.createUnknown<String>();
    this.s3Prefix = Output.createUnknown<String>();
    this.s3SseAlgorithm = Output.createUnknown<String>();
    this.s3SseKmsKeyId = Output.createUnknown<String?>();
    this.startTime = Output.createUnknown<String>();
    this.tableArn = Output.createUnknown<String>();
  }
}
