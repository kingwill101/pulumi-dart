import 'package:pulumi/pulumi.dart';
import 'custom_db_engine_version_args.dart';

/// Provides an custom engine version (CEV) resource for Amazon RDS Custom. For additional information, see [Working with CEVs for RDS Custom for Oracle](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html) and [Working with CEVs for RDS Custom for SQL Server](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev-sqlserver.html) in the the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html).
///
/// ## Example Usage
///
/// ### RDS Custom for Oracle Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "KMS symmetric key for RDS Custom for Oracle"});
/// const exampleCustomDbEngineVersion = new aws.rds.CustomDbEngineVersion("example", {
/// databaseInstallationFilesS3BucketName: "DOC-EXAMPLE-BUCKET",
/// databaseInstallationFilesS3Prefix: "1915_GI/",
/// engine: "custom-oracle-ee-cdb",
/// engineVersion: "19.cdb_cev1",
/// kmsKeyId: example.arn,
/// manifest: `  {
/// \\t\\"databaseInstallationFileNames\\":[\\"V982063-01.zip\\"]
/// }
/// `,
/// tags: {
/// Name: "example",
/// Key: "value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="KMS symmetric key for RDS Custom for Oracle")
/// example_custom_db_engine_version = aws.rds.CustomDbEngineVersion("example",
/// database_installation_files_s3_bucket_name="DOC-EXAMPLE-BUCKET",
/// database_installation_files_s3_prefix="1915_GI/",
/// engine="custom-oracle-ee-cdb",
/// engine_version="19.cdb_cev1",
/// kms_key_id=example.arn,
/// manifest="""  {
/// \t\"databaseInstallationFileNames\":[\"V982063-01.zip\"]
/// }
/// """,
/// tags={
/// "Name": "example",
/// "Key": "value",
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "KMS symmetric key for RDS Custom for Oracle",
/// });
///
/// var exampleCustomDbEngineVersion = new Aws.Rds.CustomDbEngineVersion("example", new()
/// {
/// DatabaseInstallationFilesS3BucketName = "DOC-EXAMPLE-BUCKET",
/// DatabaseInstallationFilesS3Prefix = "1915_GI/",
/// Engine = "custom-oracle-ee-cdb",
/// EngineVersion = "19.cdb_cev1",
/// KmsKeyId = example.Arn,
/// Manifest = @"  {
/// \t\""databaseInstallationFileNames\"":[\""V982063-01.zip\""]
/// }
/// ",
/// Tags =
/// {
/// { "Name", "example" },
/// { "Key", "value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description: pulumi.String("KMS symmetric key for RDS Custom for Oracle"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewCustomDbEngineVersion(ctx, "example", &rds.CustomDbEngineVersionArgs{
/// DatabaseInstallationFilesS3BucketName: pulumi.String("DOC-EXAMPLE-BUCKET"),
/// DatabaseInstallationFilesS3Prefix:     pulumi.String("1915_GI/"),
/// Engine:                                pulumi.String("custom-oracle-ee-cdb"),
/// EngineVersion:                         pulumi.String("19.cdb_cev1"),
/// KmsKeyId:                              example.Arn,
/// Manifest:                              pulumi.String("  {\n\\t\\\"databaseInstallationFileNames\\\":[\\\"V982063-01.zip\\\"]\n  }\n"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// "Key":  pulumi.String("value"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.CustomDbEngineVersion;
/// import com.pulumi.aws.rds.CustomDbEngineVersionArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("KMS symmetric key for RDS Custom for Oracle")
/// .build());
///
/// var exampleCustomDbEngineVersion = new CustomDbEngineVersion("exampleCustomDbEngineVersion", CustomDbEngineVersionArgs.builder()
/// .databaseInstallationFilesS3BucketName("DOC-EXAMPLE-BUCKET")
/// .databaseInstallationFilesS3Prefix("1915_GI/")
/// .engine("custom-oracle-ee-cdb")
/// .engineVersion("19.cdb_cev1")
/// .kmsKeyId(example.arn())
/// .manifest("""
/// {
/// \t\"databaseInstallationFileNames\":[\"V982063-01.zip\"]
/// }
/// """)
/// .tags(Map.ofEntries(
/// Map.entry("Name", "example"),
/// Map.entry("Key", "value")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: KMS symmetric key for RDS Custom for Oracle
/// exampleCustomDbEngineVersion:
/// type: aws:rds:CustomDbEngineVersion
/// name: example
/// properties:
/// databaseInstallationFilesS3BucketName: DOC-EXAMPLE-BUCKET
/// databaseInstallationFilesS3Prefix: 1915_GI/
/// engine: custom-oracle-ee-cdb
/// engineVersion: 19.cdb_cev1
/// kmsKeyId: ${example.arn}
/// manifest: |2
/// {
/// \t\"databaseInstallationFileNames\":[\"V982063-01.zip\"]
/// }
/// tags:
/// Name: example
/// Key: value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RDS Custom for Oracle External Manifest Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.kms.Key("example", {description: "KMS symmetric key for RDS Custom for Oracle"});
/// const exampleCustomDbEngineVersion = new aws.rds.CustomDbEngineVersion("example", {
/// databaseInstallationFilesS3BucketName: "DOC-EXAMPLE-BUCKET",
/// databaseInstallationFilesS3Prefix: "1915_GI/",
/// engine: "custom-oracle-ee-cdb",
/// engineVersion: "19.cdb_cev1",
/// kmsKeyId: example.arn,
/// filename: "manifest_1915_GI.json",
/// manifestHash: std.filebase64sha256({
/// input: json,
/// }).then(invoke => invoke.result),
/// tags: {
/// Name: "example",
/// Key: "value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.kms.Key("example", description="KMS symmetric key for RDS Custom for Oracle")
/// example_custom_db_engine_version = aws.rds.CustomDbEngineVersion("example",
/// database_installation_files_s3_bucket_name="DOC-EXAMPLE-BUCKET",
/// database_installation_files_s3_prefix="1915_GI/",
/// engine="custom-oracle-ee-cdb",
/// engine_version="19.cdb_cev1",
/// kms_key_id=example.arn,
/// filename="manifest_1915_GI.json",
/// manifest_hash=std.filebase64sha256(input=json).result,
/// tags={
/// "Name": "example",
/// "Key": "value",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "KMS symmetric key for RDS Custom for Oracle",
/// });
///
/// var exampleCustomDbEngineVersion = new Aws.Rds.CustomDbEngineVersion("example", new()
/// {
/// DatabaseInstallationFilesS3BucketName = "DOC-EXAMPLE-BUCKET",
/// DatabaseInstallationFilesS3Prefix = "1915_GI/",
/// Engine = "custom-oracle-ee-cdb",
/// EngineVersion = "19.cdb_cev1",
/// KmsKeyId = example.Arn,
/// Filename = "manifest_1915_GI.json",
/// ManifestHash = Std.Filebase64sha256.Invoke(new()
/// {
/// Input = json,
/// }).Apply(invoke => invoke.Result),
/// Tags =
/// {
/// { "Name", "example" },
/// { "Key", "value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description: pulumi.String("KMS symmetric key for RDS Custom for Oracle"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFilebase64sha256, err := std.Filebase64sha256(ctx, &std.Filebase64sha256Args{
/// Input: json,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = rds.NewCustomDbEngineVersion(ctx, "example", &rds.CustomDbEngineVersionArgs{
/// DatabaseInstallationFilesS3BucketName: pulumi.String("DOC-EXAMPLE-BUCKET"),
/// DatabaseInstallationFilesS3Prefix:     pulumi.String("1915_GI/"),
/// Engine:                                pulumi.String("custom-oracle-ee-cdb"),
/// EngineVersion:                         pulumi.String("19.cdb_cev1"),
/// KmsKeyId:                              example.Arn,
/// Filename:                              pulumi.String("manifest_1915_GI.json"),
/// ManifestHash:                          pulumi.String(invokeFilebase64sha256.Result),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
/// "Key":  pulumi.String("value"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.CustomDbEngineVersion;
/// import com.pulumi.aws.rds.CustomDbEngineVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64sha256Args;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("KMS symmetric key for RDS Custom for Oracle")
/// .build());
///
/// var exampleCustomDbEngineVersion = new CustomDbEngineVersion("exampleCustomDbEngineVersion", CustomDbEngineVersionArgs.builder()
/// .databaseInstallationFilesS3BucketName("DOC-EXAMPLE-BUCKET")
/// .databaseInstallationFilesS3Prefix("1915_GI/")
/// .engine("custom-oracle-ee-cdb")
/// .engineVersion("19.cdb_cev1")
/// .kmsKeyId(example.arn())
/// .filename("manifest_1915_GI.json")
/// .manifestHash(StdFunctions.filebase64sha256(Filebase64sha256Args.builder()
/// .input(json)
/// .build()).result())
/// .tags(Map.ofEntries(
/// Map.entry("Name", "example"),
/// Map.entry("Key", "value")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: KMS symmetric key for RDS Custom for Oracle
/// exampleCustomDbEngineVersion:
/// type: aws:rds:CustomDbEngineVersion
/// name: example
/// properties:
/// databaseInstallationFilesS3BucketName: DOC-EXAMPLE-BUCKET
/// databaseInstallationFilesS3Prefix: 1915_GI/
/// engine: custom-oracle-ee-cdb
/// engineVersion: 19.cdb_cev1
/// kmsKeyId: ${example.arn}
/// filename: manifest_1915_GI.json
/// manifestHash:
/// fn::invoke:
/// function: std:filebase64sha256
/// arguments:
/// input: ${json}
/// return: result
/// tags:
/// Name: example
/// Key: value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RDS Custom for SQL Server Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // CEV creation requires an AMI owned by the operator
/// const test = new aws.rds.CustomDbEngineVersion("test", {
/// engine: "custom-sqlserver-se",
/// engineVersion: "15.00.4249.2.cev-1",
/// sourceImageId: "ami-0aa12345678a12ab1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # CEV creation requires an AMI owned by the operator
/// test = aws.rds.CustomDbEngineVersion("test",
/// engine="custom-sqlserver-se",
/// engine_version="15.00.4249.2.cev-1",
/// source_image_id="ami-0aa12345678a12ab1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // CEV creation requires an AMI owned by the operator
/// var test = new Aws.Rds.CustomDbEngineVersion("test", new()
/// {
/// Engine = "custom-sqlserver-se",
/// EngineVersion = "15.00.4249.2.cev-1",
/// SourceImageId = "ami-0aa12345678a12ab1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // CEV creation requires an AMI owned by the operator
/// _, err := rds.NewCustomDbEngineVersion(ctx, "test", &rds.CustomDbEngineVersionArgs{
/// Engine:        pulumi.String("custom-sqlserver-se"),
/// EngineVersion: pulumi.String("15.00.4249.2.cev-1"),
/// SourceImageId: pulumi.String("ami-0aa12345678a12ab1"),
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
/// import com.pulumi.aws.rds.CustomDbEngineVersion;
/// import com.pulumi.aws.rds.CustomDbEngineVersionArgs;
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
/// // CEV creation requires an AMI owned by the operator
/// var test = new CustomDbEngineVersion("test", CustomDbEngineVersionArgs.builder()
/// .engine("custom-sqlserver-se")
/// .engineVersion("15.00.4249.2.cev-1")
/// .sourceImageId("ami-0aa12345678a12ab1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # CEV creation requires an AMI owned by the operator
/// test:
/// type: aws:rds:CustomDbEngineVersion
/// properties:
/// engine: custom-sqlserver-se
/// engineVersion: 15.00.4249.2.cev-1
/// sourceImageId: ami-0aa12345678a12ab1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### RDS Custom for SQL Server Usage with AMI from another region
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.AmiCopy("example", {
/// name: "sqlserver-se-2019-15.00.4249.2",
/// description: "A copy of ami-xxxxxxxx",
/// sourceAmiId: "ami-xxxxxxxx",
/// sourceAmiRegion: "us-east-1",
/// });
/// // CEV creation requires an AMI owned by the operator
/// const test = new aws.rds.CustomDbEngineVersion("test", {
/// engine: "custom-sqlserver-se",
/// engineVersion: "15.00.4249.2.cev-1",
/// sourceImageId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.AmiCopy("example",
/// name="sqlserver-se-2019-15.00.4249.2",
/// description="A copy of ami-xxxxxxxx",
/// source_ami_id="ami-xxxxxxxx",
/// source_ami_region="us-east-1")
/// # CEV creation requires an AMI owned by the operator
/// test = aws.rds.CustomDbEngineVersion("test",
/// engine="custom-sqlserver-se",
/// engine_version="15.00.4249.2.cev-1",
/// source_image_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.AmiCopy("example", new()
/// {
/// Name = "sqlserver-se-2019-15.00.4249.2",
/// Description = "A copy of ami-xxxxxxxx",
/// SourceAmiId = "ami-xxxxxxxx",
/// SourceAmiRegion = "us-east-1",
/// });
///
/// // CEV creation requires an AMI owned by the operator
/// var test = new Aws.Rds.CustomDbEngineVersion("test", new()
/// {
/// Engine = "custom-sqlserver-se",
/// EngineVersion = "15.00.4249.2.cev-1",
/// SourceImageId = example.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewAmiCopy(ctx, "example", &ec2.AmiCopyArgs{
/// Name:            pulumi.String("sqlserver-se-2019-15.00.4249.2"),
/// Description:     pulumi.String("A copy of ami-xxxxxxxx"),
/// SourceAmiId:     pulumi.String("ami-xxxxxxxx"),
/// SourceAmiRegion: pulumi.String("us-east-1"),
/// })
/// if err != nil {
/// return err
/// }
/// // CEV creation requires an AMI owned by the operator
/// _, err = rds.NewCustomDbEngineVersion(ctx, "test", &rds.CustomDbEngineVersionArgs{
/// Engine:        pulumi.String("custom-sqlserver-se"),
/// EngineVersion: pulumi.String("15.00.4249.2.cev-1"),
/// SourceImageId: example.ID(),
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
/// import com.pulumi.aws.ec2.AmiCopy;
/// import com.pulumi.aws.ec2.AmiCopyArgs;
/// import com.pulumi.aws.rds.CustomDbEngineVersion;
/// import com.pulumi.aws.rds.CustomDbEngineVersionArgs;
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
/// var example = new AmiCopy("example", AmiCopyArgs.builder()
/// .name("sqlserver-se-2019-15.00.4249.2")
/// .description("A copy of ami-xxxxxxxx")
/// .sourceAmiId("ami-xxxxxxxx")
/// .sourceAmiRegion("us-east-1")
/// .build());
///
/// // CEV creation requires an AMI owned by the operator
/// var test = new CustomDbEngineVersion("test", CustomDbEngineVersionArgs.builder()
/// .engine("custom-sqlserver-se")
/// .engineVersion("15.00.4249.2.cev-1")
/// .sourceImageId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:AmiCopy
/// properties:
/// name: sqlserver-se-2019-15.00.4249.2
/// description: A copy of ami-xxxxxxxx
/// sourceAmiId: ami-xxxxxxxx
/// sourceAmiRegion: us-east-1
/// # CEV creation requires an AMI owned by the operator
/// test:
/// type: aws:rds:CustomDbEngineVersion
/// properties:
/// engine: custom-sqlserver-se
/// engineVersion: 15.00.4249.2.cev-1
/// sourceImageId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import custom engine versions for Amazon RDS custom using the <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> and <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:rds/customDbEngineVersion:CustomDbEngineVersion example custom-oracle-ee-cdb:19.cdb_cev1
/// ```
class CustomDbEngineVersion extends CustomResource {
  /// The Amazon Resource Name (ARN) for the custom engine version.
  late final Output<String> arn;

  /// The date and time that the CEV was created.
  late final Output<String> createTime;

  /// The name of the Amazon S3 bucket that contains the database installation files.
  late final Output<String?> databaseInstallationFilesS3BucketName;

  /// The prefix for the Amazon S3 bucket that contains the database installation files.
  late final Output<String?> databaseInstallationFilesS3Prefix;

  /// The name of the DB parameter group family for the CEV.
  late final Output<String> dbParameterGroupFamily;

  /// The description of the CEV.
  late final Output<String?> description;

  /// The name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  late final Output<String> engine;

  /// The version of the database engine.
  late final Output<String> engineVersion;

  /// The name of the manifest file within the local filesystem. Conflicts with <span pulumi-lang-nodejs="`manifest`" pulumi-lang-dotnet="`Manifest`" pulumi-lang-go="`manifest`" pulumi-lang-python="`manifest`" pulumi-lang-yaml="`manifest`" pulumi-lang-java="`manifest`">`manifest`</span>.
  late final Output<String?> filename;

  /// The ID of the AMI that was created with the CEV.
  late final Output<String> imageId;

  /// The ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  late final Output<String> kmsKeyId;

  /// The major version of the database engine.
  late final Output<String> majorEngineVersion;

  /// The manifest file, in JSON format, that contains the list of database installation files. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>.
  late final Output<String?> manifest;

  /// The returned manifest file, in JSON format, service generated and often different from input <span pulumi-lang-nodejs="`manifest`" pulumi-lang-dotnet="`Manifest`" pulumi-lang-go="`manifest`" pulumi-lang-python="`manifest`" pulumi-lang-yaml="`manifest`" pulumi-lang-java="`manifest`">`manifest`</span>.
  late final Output<String> manifestComputed;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  late final Output<String?> manifestHash;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  late final Output<String?> sourceImageId;

  /// The status of the CEV. Valid values are <span pulumi-lang-nodejs="`available`" pulumi-lang-dotnet="`Available`" pulumi-lang-go="`available`" pulumi-lang-python="`available`" pulumi-lang-yaml="`available`" pulumi-lang-java="`available`">`available`</span>, <span pulumi-lang-nodejs="`inactive`" pulumi-lang-dotnet="`Inactive`" pulumi-lang-go="`inactive`" pulumi-lang-python="`inactive`" pulumi-lang-yaml="`inactive`" pulumi-lang-java="`inactive`">`inactive`</span>, `inactive-except-restore`.
  late final Output<String> status;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  CustomDbEngineVersion(
    String name, {
    CustomDbEngineVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/customDbEngineVersion:CustomDbEngineVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createTime = registerOutput<String>('createTime');
    this.databaseInstallationFilesS3BucketName =
        registerOutput<String?>('databaseInstallationFilesS3BucketName');
    this.databaseInstallationFilesS3Prefix =
        registerOutput<String?>('databaseInstallationFilesS3Prefix');
    this.dbParameterGroupFamily =
        registerOutput<String>('dbParameterGroupFamily');
    this.description = registerOutput<String?>('description');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.filename = registerOutput<String?>('filename');
    this.imageId = registerOutput<String>('imageId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.majorEngineVersion = registerOutput<String>('majorEngineVersion');
    this.manifest = registerOutput<String?>('manifest');
    this.manifestComputed = registerOutput<String>('manifestComputed');
    this.manifestHash = registerOutput<String?>('manifestHash');
    this.region = registerOutput<String>('region');
    this.sourceImageId = registerOutput<String?>('sourceImageId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
