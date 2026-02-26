import 'package:pulumi/pulumi.dart';
import '../table_magnetic_store_write_properties/table_magnetic_store_write_properties.dart';
import '../table_retention_properties/table_retention_properties.dart';
import '../table_schema/table_schema.dart';
import 'table_args4.dart';

/// Provides a Timestream table resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Table("example", {
/// databaseName: exampleAwsTimestreamwriteDatabase.databaseName,
/// tableName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Table("example",
/// database_name=example_aws_timestreamwrite_database["databaseName"],
/// table_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.TimestreamWrite.Table("example", new()
/// {
/// DatabaseName = exampleAwsTimestreamwriteDatabase.DatabaseName,
/// TableName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := timestreamwrite.NewTable(ctx, "example", &timestreamwrite.TableArgs{
/// DatabaseName: pulumi.Any(exampleAwsTimestreamwriteDatabase.DatabaseName),
/// TableName:    pulumi.String("example"),
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
/// import com.pulumi.aws.timestreamwrite.Table;
/// import com.pulumi.aws.timestreamwrite.TableArgs;
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
/// var example = new Table("example", TableArgs.builder()
/// .databaseName(exampleAwsTimestreamwriteDatabase.databaseName())
/// .tableName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:timestreamwrite:Table
/// properties:
/// databaseName: ${exampleAwsTimestreamwriteDatabase.databaseName}
/// tableName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Full usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Table("example", {
/// databaseName: exampleAwsTimestreamwriteDatabase.databaseName,
/// tableName: "example",
/// retentionProperties: {
/// magneticStoreRetentionPeriodInDays: 30,
/// memoryStoreRetentionPeriodInHours: 8,
/// },
/// tags: {
/// Name: "example-timestream-table",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Table("example",
/// database_name=example_aws_timestreamwrite_database["databaseName"],
/// table_name="example",
/// retention_properties={
/// "magnetic_store_retention_period_in_days": 30,
/// "memory_store_retention_period_in_hours": 8,
/// },
/// tags={
/// "Name": "example-timestream-table",
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
/// var example = new Aws.TimestreamWrite.Table("example", new()
/// {
/// DatabaseName = exampleAwsTimestreamwriteDatabase.DatabaseName,
/// TableName = "example",
/// RetentionProperties = new Aws.TimestreamWrite.Inputs.TableRetentionPropertiesArgs
/// {
/// MagneticStoreRetentionPeriodInDays = 30,
/// MemoryStoreRetentionPeriodInHours = 8,
/// },
/// Tags =
/// {
/// { "Name", "example-timestream-table" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := timestreamwrite.NewTable(ctx, "example", &timestreamwrite.TableArgs{
/// DatabaseName: pulumi.Any(exampleAwsTimestreamwriteDatabase.DatabaseName),
/// TableName:    pulumi.String("example"),
/// RetentionProperties: &timestreamwrite.TableRetentionPropertiesArgs{
/// MagneticStoreRetentionPeriodInDays: pulumi.Int(30),
/// MemoryStoreRetentionPeriodInHours:  pulumi.Int(8),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-timestream-table"),
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
/// import com.pulumi.aws.timestreamwrite.Table;
/// import com.pulumi.aws.timestreamwrite.TableArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableRetentionPropertiesArgs;
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
/// var example = new Table("example", TableArgs.builder()
/// .databaseName(exampleAwsTimestreamwriteDatabase.databaseName())
/// .tableName("example")
/// .retentionProperties(TableRetentionPropertiesArgs.builder()
/// .magneticStoreRetentionPeriodInDays(30)
/// .memoryStoreRetentionPeriodInHours(8)
/// .build())
/// .tags(Map.of("Name", "example-timestream-table"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:timestreamwrite:Table
/// properties:
/// databaseName: ${exampleAwsTimestreamwriteDatabase.databaseName}
/// tableName: example
/// retentionProperties:
/// magneticStoreRetentionPeriodInDays: 30
/// memoryStoreRetentionPeriodInHours: 8
/// tags:
/// Name: example-timestream-table
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Customer-defined Partition Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Table("example", {
/// databaseName: exampleAwsTimestreamwriteDatabase.databaseName,
/// tableName: "example",
/// schema: {
/// compositePartitionKey: {
/// enforcementInRecord: "REQUIRED",
/// name: "attr1",
/// type: "DIMENSION",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Table("example",
/// database_name=example_aws_timestreamwrite_database["databaseName"],
/// table_name="example",
/// schema={
/// "composite_partition_key": {
/// "enforcement_in_record": "REQUIRED",
/// "name": "attr1",
/// "type": "DIMENSION",
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
/// var example = new Aws.TimestreamWrite.Table("example", new()
/// {
/// DatabaseName = exampleAwsTimestreamwriteDatabase.DatabaseName,
/// TableName = "example",
/// Schema = new Aws.TimestreamWrite.Inputs.TableSchemaArgs
/// {
/// CompositePartitionKey = new Aws.TimestreamWrite.Inputs.TableSchemaCompositePartitionKeyArgs
/// {
/// EnforcementInRecord = "REQUIRED",
/// Name = "attr1",
/// Type = "DIMENSION",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := timestreamwrite.NewTable(ctx, "example", &timestreamwrite.TableArgs{
/// DatabaseName: pulumi.Any(exampleAwsTimestreamwriteDatabase.DatabaseName),
/// TableName:    pulumi.String("example"),
/// Schema: &timestreamwrite.TableSchemaArgs{
/// CompositePartitionKey: &timestreamwrite.TableSchemaCompositePartitionKeyArgs{
/// EnforcementInRecord: pulumi.String("REQUIRED"),
/// Name:                pulumi.String("attr1"),
/// Type:                pulumi.String("DIMENSION"),
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
/// import com.pulumi.aws.timestreamwrite.Table;
/// import com.pulumi.aws.timestreamwrite.TableArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableSchemaArgs;
/// import com.pulumi.aws.timestreamwrite.inputs.TableSchemaCompositePartitionKeyArgs;
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
/// var example = new Table("example", TableArgs.builder()
/// .databaseName(exampleAwsTimestreamwriteDatabase.databaseName())
/// .tableName("example")
/// .schema(TableSchemaArgs.builder()
/// .compositePartitionKey(TableSchemaCompositePartitionKeyArgs.builder()
/// .enforcementInRecord("REQUIRED")
/// .name("attr1")
/// .type("DIMENSION")
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
/// type: aws:timestreamwrite:Table
/// properties:
/// databaseName: ${exampleAwsTimestreamwriteDatabase.databaseName}
/// tableName: example
/// schema:
/// compositePartitionKey:
/// enforcementInRecord: REQUIRED
/// name: attr1
/// type: DIMENSION
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Timestream tables using the <span pulumi-lang-nodejs="`tableName`" pulumi-lang-dotnet="`TableName`" pulumi-lang-go="`tableName`" pulumi-lang-python="`table_name`" pulumi-lang-yaml="`tableName`" pulumi-lang-java="`tableName`">`table_name`</span> and <span pulumi-lang-nodejs="`databaseName`" pulumi-lang-dotnet="`DatabaseName`" pulumi-lang-go="`databaseName`" pulumi-lang-python="`database_name`" pulumi-lang-yaml="`databaseName`" pulumi-lang-java="`databaseName`">`database_name`</span> separate by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:timestreamwrite/table:Table example ExampleTable:ExampleDatabase
/// ```
class Table4 extends CustomResource {
  /// The ARN that uniquely identifies this table.
  late final Output<String> arn;

  /// The name of the Timestream database.
  late final Output<String> databaseName;

  /// Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details.
  late final Output<TableMagneticStoreWriteProperties>
      magneticStoreWriteProperties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, <span pulumi-lang-nodejs="`magneticStoreRetentionPeriodInDays`" pulumi-lang-dotnet="`MagneticStoreRetentionPeriodInDays`" pulumi-lang-go="`magneticStoreRetentionPeriodInDays`" pulumi-lang-python="`magnetic_store_retention_period_in_days`" pulumi-lang-yaml="`magneticStoreRetentionPeriodInDays`" pulumi-lang-java="`magneticStoreRetentionPeriodInDays`">`magnetic_store_retention_period_in_days`</span> default to 73000 and <span pulumi-lang-nodejs="`memoryStoreRetentionPeriodInHours`" pulumi-lang-dotnet="`MemoryStoreRetentionPeriodInHours`" pulumi-lang-go="`memoryStoreRetentionPeriodInHours`" pulumi-lang-python="`memory_store_retention_period_in_hours`" pulumi-lang-yaml="`memoryStoreRetentionPeriodInHours`" pulumi-lang-java="`memoryStoreRetentionPeriodInHours`">`memory_store_retention_period_in_hours`</span> defaults to 6.
  late final Output<TableRetentionProperties> retentionProperties;

  /// The schema of the table. See Schema below for more details.
  late final Output<TableSchema> schema;

  /// The name of the Timestream table.
  late final Output<String> tableName;

  /// Map of tags to assign to this resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Table4(
    String name, {
    TableArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/table:Table',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.magneticStoreWriteProperties =
        registerOutput<TableMagneticStoreWriteProperties>(
            'magneticStoreWriteProperties');
    this.region = registerOutput<String>('region');
    this.retentionProperties =
        registerOutput<TableRetentionProperties>('retentionProperties');
    this.schema = registerOutput<TableSchema>('schema');
    this.tableName = registerOutput<String>('tableName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
