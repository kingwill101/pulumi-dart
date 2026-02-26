import 'package:pulumi/pulumi.dart';
import '../configured_table_table_reference/configured_table_table_reference.dart';
import 'configured_table_args.dart';

/// Provides a AWS Clean Rooms configured table. Configured tables are used to represent references to existing tables in the AWS Glue Data Catalog.
///
/// ## Example Usage
///
/// ### Configured table with tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testConfiguredTable = new aws.cleanrooms.ConfiguredTable("test_configured_table", {
/// name: "pulumi-example-table",
/// description: "I made this table with Pulumi!",
/// analysisMethod: "DIRECT_QUERY",
/// allowedColumns: [
/// "column1",
/// "column2",
/// "column3",
/// ],
/// tableReference: {
/// databaseName: "example_database",
/// tableName: "example_table",
/// },
/// tags: {
/// Project: "Pulumi",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_configured_table = aws.cleanrooms.ConfiguredTable("test_configured_table",
/// name="pulumi-example-table",
/// description="I made this table with Pulumi!",
/// analysis_method="DIRECT_QUERY",
/// allowed_columns=[
/// "column1",
/// "column2",
/// "column3",
/// ],
/// table_reference={
/// "database_name": "example_database",
/// "table_name": "example_table",
/// },
/// tags={
/// "Project": "Pulumi",
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
/// var testConfiguredTable = new Aws.CleanRooms.ConfiguredTable("test_configured_table", new()
/// {
/// Name = "pulumi-example-table",
/// Description = "I made this table with Pulumi!",
/// AnalysisMethod = "DIRECT_QUERY",
/// AllowedColumns = new[]
/// {
/// "column1",
/// "column2",
/// "column3",
/// },
/// TableReference = new Aws.CleanRooms.Inputs.ConfiguredTableTableReferenceArgs
/// {
/// DatabaseName = "example_database",
/// TableName = "example_table",
/// },
/// Tags =
/// {
/// { "Project", "Pulumi" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cleanrooms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cleanrooms.NewConfiguredTable(ctx, "test_configured_table", &cleanrooms.ConfiguredTableArgs{
/// Name:           pulumi.String("pulumi-example-table"),
/// Description:    pulumi.String("I made this table with Pulumi!"),
/// AnalysisMethod: pulumi.String("DIRECT_QUERY"),
/// AllowedColumns: pulumi.StringArray{
/// pulumi.String("column1"),
/// pulumi.String("column2"),
/// pulumi.String("column3"),
/// },
/// TableReference: &cleanrooms.ConfiguredTableTableReferenceArgs{
/// DatabaseName: pulumi.String("example_database"),
/// TableName:    pulumi.String("example_table"),
/// },
/// Tags: pulumi.StringMap{
/// "Project": pulumi.String("Pulumi"),
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
/// import com.pulumi.aws.cleanrooms.ConfiguredTable;
/// import com.pulumi.aws.cleanrooms.ConfiguredTableArgs;
/// import com.pulumi.aws.cleanrooms.inputs.ConfiguredTableTableReferenceArgs;
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
/// var testConfiguredTable = new ConfiguredTable("testConfiguredTable", ConfiguredTableArgs.builder()
/// .name("pulumi-example-table")
/// .description("I made this table with Pulumi!")
/// .analysisMethod("DIRECT_QUERY")
/// .allowedColumns(
/// "column1",
/// "column2",
/// "column3")
/// .tableReference(ConfiguredTableTableReferenceArgs.builder()
/// .databaseName("example_database")
/// .tableName("example_table")
/// .build())
/// .tags(Map.of("Project", "Pulumi"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testConfiguredTable:
/// type: aws:cleanrooms:ConfiguredTable
/// name: test_configured_table
/// properties:
/// name: pulumi-example-table
/// description: I made this table with Pulumi!
/// analysisMethod: DIRECT_QUERY
/// allowedColumns:
/// - column1
/// - column2
/// - column3
/// tableReference:
/// databaseName: example_database
/// tableName: example_table
/// tags:
/// Project: Pulumi
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the cleanrooms configured table.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.cleanrooms.ConfiguredTable`" pulumi-lang-dotnet="`aws.cleanrooms.ConfiguredTable`" pulumi-lang-go="`cleanrooms.ConfiguredTable`" pulumi-lang-python="`cleanrooms.ConfiguredTable`" pulumi-lang-yaml="`aws.cleanrooms.ConfiguredTable`" pulumi-lang-java="`aws.cleanrooms.ConfiguredTable`">`aws.cleanrooms.ConfiguredTable`</span> using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cleanrooms/configuredTable:ConfiguredTable table 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class ConfiguredTable extends CustomResource {
  /// The columns of the references table which will be included in the configured table.
  late final Output<List<String>> allowedColumns;

  /// The analysis method for the configured table. The only valid value is currently `DIRECT_QUERY`.
  late final Output<String> analysisMethod;

  /// The ARN of the configured table.
  late final Output<String> arn;

  /// The date and time the configured table was created.
  late final Output<String> createTime;

  /// A description for the configured table.
  late final Output<String?> description;

  /// The name of the configured table.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A reference to the AWS Glue table which will be used to create the configured table.
  /// * `table_reference.database_name` - (Required - Forces new resource) - The name of the AWS Glue database which contains the table.
  /// * `table_reference.table_name` - (Required - Forces new resource) - The name of the AWS Glue table which will be used to create the configured table.
  late final Output<ConfiguredTableTableReference> tableReference;

  /// Key value pairs which tag the configured table.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The date and time the configured table was last updated.
  late final Output<String> updateTime;

  ConfiguredTable(
    String name, {
    ConfiguredTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cleanrooms/configuredTable:ConfiguredTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedColumns = registerOutput<List<String>>('allowedColumns');
    this.analysisMethod = registerOutput<String>('analysisMethod');
    this.arn = registerOutput<String>('arn');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tableReference =
        registerOutput<ConfiguredTableTableReference>('tableReference');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
