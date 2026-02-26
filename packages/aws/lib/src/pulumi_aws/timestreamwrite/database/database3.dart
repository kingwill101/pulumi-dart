import 'package:pulumi/pulumi.dart';
import 'database_args3.dart';

/// Provides a Timestream database resource.
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
/// const example = new aws.timestreamwrite.Database("example", {databaseName: "database-example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Database("example", database_name="database-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.TimestreamWrite.Database("example", new()
/// {
/// DatabaseName = "database-example",
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
/// _, err := timestreamwrite.NewDatabase(ctx, "example", &timestreamwrite.DatabaseArgs{
/// DatabaseName: pulumi.String("database-example"),
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
/// import com.pulumi.aws.timestreamwrite.Database;
/// import com.pulumi.aws.timestreamwrite.DatabaseArgs;
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
/// var example = new Database("example", DatabaseArgs.builder()
/// .databaseName("database-example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:timestreamwrite:Database
/// properties:
/// databaseName: database-example
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
/// const example = new aws.timestreamwrite.Database("example", {
/// databaseName: "database-example",
/// kmsKeyId: exampleAwsKmsKey.arn,
/// tags: {
/// Name: "value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Database("example",
/// database_name="database-example",
/// kms_key_id=example_aws_kms_key["arn"],
/// tags={
/// "Name": "value",
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
/// var example = new Aws.TimestreamWrite.Database("example", new()
/// {
/// DatabaseName = "database-example",
/// KmsKeyId = exampleAwsKmsKey.Arn,
/// Tags =
/// {
/// { "Name", "value" },
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
/// _, err := timestreamwrite.NewDatabase(ctx, "example", &timestreamwrite.DatabaseArgs{
/// DatabaseName: pulumi.String("database-example"),
/// KmsKeyId:     pulumi.Any(exampleAwsKmsKey.Arn),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("value"),
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
/// import com.pulumi.aws.timestreamwrite.Database;
/// import com.pulumi.aws.timestreamwrite.DatabaseArgs;
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
/// var example = new Database("example", DatabaseArgs.builder()
/// .databaseName("database-example")
/// .kmsKeyId(exampleAwsKmsKey.arn())
/// .tags(Map.of("Name", "value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:timestreamwrite:Database
/// properties:
/// databaseName: database-example
/// kmsKeyId: ${exampleAwsKmsKey.arn}
/// tags:
/// Name: value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Timestream databases using the <span pulumi-lang-nodejs="`databaseName`" pulumi-lang-dotnet="`DatabaseName`" pulumi-lang-go="`databaseName`" pulumi-lang-python="`database_name`" pulumi-lang-yaml="`databaseName`" pulumi-lang-java="`databaseName`">`database_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:timestreamwrite/database:Database example example
/// ```
class Database3 extends CustomResource {
  /// The ARN that uniquely identifies this database.
  late final Output<String> arn;

  /// The name of the Timestream database. Minimum length of 3. Maximum length of 64.
  late final Output<String> databaseName;

  /// The ARN (not Alias ARN) of the KMS key to be used to encrypt the data stored in the database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. Refer to [AWS managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk) for more info.
  late final Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The total number of tables found within the Timestream database.
  late final Output<int> tableCount;

  /// Map of tags to assign to this resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Database3(
    String name, {
    DatabaseArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/database:Database',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.databaseName = registerOutput<String>('databaseName');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.tableCount = registerOutput<int>('tableCount');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
