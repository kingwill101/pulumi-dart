import 'package:pulumi/pulumi.dart';
import 'table_replica_args.dart';

/// Provides a DynamoDB table replica resource for [DynamoDB Global Tables V2 (version 2019.11.21)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html).
///
/// > **Note:** Use <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> for <span pulumi-lang-nodejs="`replica`" pulumi-lang-dotnet="`Replica`" pulumi-lang-go="`replica`" pulumi-lang-python="`replica`" pulumi-lang-yaml="`replica`" pulumi-lang-java="`replica`">`replica`</span> in the associated<span pulumi-lang-nodejs=" aws.dynamodb.Table " pulumi-lang-dotnet=" aws.dynamodb.Table " pulumi-lang-go=" dynamodb.Table " pulumi-lang-python=" dynamodb.Table " pulumi-lang-yaml=" aws.dynamodb.Table " pulumi-lang-java=" aws.dynamodb.Table "> aws.dynamodb.Table </span>configuration.
///
/// > **Note:** Do not use the <span pulumi-lang-nodejs="`replica`" pulumi-lang-dotnet="`Replica`" pulumi-lang-go="`replica`" pulumi-lang-python="`replica`" pulumi-lang-yaml="`replica`" pulumi-lang-java="`replica`">`replica`</span> configuration block of<span pulumi-lang-nodejs=" aws.dynamodb.Table " pulumi-lang-dotnet=" aws.dynamodb.Table " pulumi-lang-go=" dynamodb.Table " pulumi-lang-python=" dynamodb.Table " pulumi-lang-yaml=" aws.dynamodb.Table " pulumi-lang-java=" aws.dynamodb.Table "> aws.dynamodb.Table </span>together with this resource as the two configuration options are mutually exclusive.
///
/// ## Example Usage
///
/// ### Basic Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dynamodb.Table("example", {
/// name: "TestTable",
/// hashKey: "BrodoBaggins",
/// billingMode: "PAY_PER_REQUEST",
/// streamEnabled: true,
/// streamViewType: "NEW_AND_OLD_IMAGES",
/// attributes: [{
/// name: "BrodoBaggins",
/// type: "S",
/// }],
/// });
/// const exampleTableReplica = new aws.dynamodb.TableReplica("example", {
/// globalTableArn: example.arn,
/// tags: {
/// Name: "IZPAWS",
/// Pozo: "Amargo",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dynamodb.Table("example",
/// name="TestTable",
/// hash_key="BrodoBaggins",
/// billing_mode="PAY_PER_REQUEST",
/// stream_enabled=True,
/// stream_view_type="NEW_AND_OLD_IMAGES",
/// attributes=[{
/// "name": "BrodoBaggins",
/// "type": "S",
/// }])
/// example_table_replica = aws.dynamodb.TableReplica("example",
/// global_table_arn=example.arn,
/// tags={
/// "Name": "IZPAWS",
/// "Pozo": "Amargo",
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
/// var example = new Aws.DynamoDB.Table("example", new()
/// {
/// Name = "TestTable",
/// HashKey = "BrodoBaggins",
/// BillingMode = "PAY_PER_REQUEST",
/// StreamEnabled = true,
/// StreamViewType = "NEW_AND_OLD_IMAGES",
/// Attributes = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "BrodoBaggins",
/// Type = "S",
/// },
/// },
/// });
///
/// var exampleTableReplica = new Aws.DynamoDB.TableReplica("example", new()
/// {
/// GlobalTableArn = example.Arn,
/// Tags =
/// {
/// { "Name", "IZPAWS" },
/// { "Pozo", "Amargo" },
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
/// example, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// Name:           pulumi.String("TestTable"),
/// HashKey:        pulumi.String("BrodoBaggins"),
/// BillingMode:    pulumi.String("PAY_PER_REQUEST"),
/// StreamEnabled:  pulumi.Bool(true),
/// StreamViewType: pulumi.String("NEW_AND_OLD_IMAGES"),
/// Attributes: dynamodb.TableAttributeArray{
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("BrodoBaggins"),
/// Type: pulumi.String("S"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dynamodb.NewTableReplica(ctx, "example", &dynamodb.TableReplicaArgs{
/// GlobalTableArn: example.Arn,
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("IZPAWS"),
/// "Pozo": pulumi.String("Amargo"),
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
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
/// import com.pulumi.aws.dynamodb.TableReplica;
/// import com.pulumi.aws.dynamodb.TableReplicaArgs;
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
/// .name("TestTable")
/// .hashKey("BrodoBaggins")
/// .billingMode("PAY_PER_REQUEST")
/// .streamEnabled(true)
/// .streamViewType("NEW_AND_OLD_IMAGES")
/// .attributes(TableAttributeArgs.builder()
/// .name("BrodoBaggins")
/// .type("S")
/// .build())
/// .build());
///
/// var exampleTableReplica = new TableReplica("exampleTableReplica", TableReplicaArgs.builder()
/// .globalTableArn(example.arn())
/// .tags(Map.ofEntries(
/// Map.entry("Name", "IZPAWS"),
/// Map.entry("Pozo", "Amargo")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dynamodb:Table
/// properties:
/// name: TestTable
/// hashKey: BrodoBaggins
/// billingMode: PAY_PER_REQUEST
/// streamEnabled: true
/// streamViewType: NEW_AND_OLD_IMAGES
/// attributes:
/// - name: BrodoBaggins
/// type: S
/// exampleTableReplica:
/// type: aws:dynamodb:TableReplica
/// name: example
/// properties:
/// globalTableArn: ${example.arn}
/// tags:
/// Name: IZPAWS
/// Pozo: Amargo
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DynamoDB table replicas using the `table-name:main-region`. For example:
///
/// > **Note:** When importing, use the region where the initial or _main_ global table resides, _not_ the region of the replica.
///
/// ```sh
/// $ pulumi import aws:dynamodb/tableReplica:TableReplica example TestTable:us-west-2
/// ```
class TableReplica2 extends CustomResource {
  /// ARN of the table replica.
  late final Output<String> arn;

  /// Whether deletion protection is enabled (true) or disabled (false) on the table replica.
  late final Output<bool> deletionProtectionEnabled;

  /// ARN of the _main_ or global table which this resource will replicate.
  ///
  /// The following arguments are optional:
  late final Output<String> globalTableArn;

  /// ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  late final Output<String> kmsKeyArn;

  /// Whether to enable Point In Time Recovery for the table replica. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Storage class of the table replica. Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`. If not used, the table replica will use the same class as the global table.
  late final Output<String?> tableClassOverride;

  /// Map of tags to populate on the created table. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  TableReplica2(
    String name, {
    TableReplicaArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tableReplica:TableReplica',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deletionProtectionEnabled = Output.createUnknown<bool>();
    this.globalTableArn = Output.createUnknown<String>();
    this.kmsKeyArn = Output.createUnknown<String>();
    this.pointInTimeRecovery = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.tableClassOverride = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
