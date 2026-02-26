import 'package:pulumi/pulumi.dart';
import '../database_acl_configuration/database_acl_configuration.dart';
import '../database_encryption_configuration/database_encryption_configuration.dart';
import 'database_args.dart';

/// Provides an Athena database.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleDatabase = new aws.athena.Database("example", {
/// name: "database_name",
/// bucket: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_database = aws.athena.Database("example",
/// name="database_name",
/// bucket=example.id)
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
/// BucketName = "example",
/// });
///
/// var exampleDatabase = new Aws.Athena.Database("example", new()
/// {
/// Name = "database_name",
/// Bucket = example.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = athena.NewDatabase(ctx, "example", &athena.DatabaseArgs{
/// Name:   pulumi.String("database_name"),
/// Bucket: example.ID(),
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
/// import com.pulumi.aws.athena.Database;
/// import com.pulumi.aws.athena.DatabaseArgs;
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
/// .bucket("example")
/// .build());
///
/// var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
/// .name("database_name")
/// .bucket(example.id())
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
/// bucket: example
/// exampleDatabase:
/// type: aws:athena:Database
/// name: example
/// properties:
/// name: database_name
/// bucket: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Athena Databases using their name. For example:
///
/// ```sh
/// $ pulumi import aws:athena/database:Database example example
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`encryptionConfiguration`" pulumi-lang-dotnet="`EncryptionConfiguration`" pulumi-lang-go="`encryptionConfiguration`" pulumi-lang-python="`encryption_configuration`" pulumi-lang-yaml="`encryptionConfiguration`" pulumi-lang-java="`encryptionConfiguration`">`encryption_configuration`</span> and <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.Database("example", {
/// name: "database_name",
/// bucket: exampleAwsS3Bucket.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.Database("example",
/// name="database_name",
/// bucket=example_aws_s3_bucket["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Athena.Database("example", new()
/// {
/// Name = "database_name",
/// Bucket = exampleAwsS3Bucket.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := athena.NewDatabase(ctx, "example", &athena.DatabaseArgs{
/// Name:   pulumi.String("database_name"),
/// Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
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
/// import com.pulumi.aws.athena.Database;
/// import com.pulumi.aws.athena.DatabaseArgs;
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
/// .name("database_name")
/// .bucket(exampleAwsS3Bucket.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:athena:Database
/// properties:
/// name: database_name
/// bucket: ${exampleAwsS3Bucket.id}
/// ```
/// <!--End PulumiCodeChooser -->
class Database extends CustomResource {
  /// That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  late final Output<DatabaseAclConfiguration?> aclConfiguration;

  /// Name of S3 bucket to save the results of the query execution.
  late final Output<String?> bucket;

  /// Description of the database.
  late final Output<String?> comment;

  /// Encryption key block AWS Athena uses to decrypt the data in S3, such as an AWS Key Management Service (AWS KMS) key. See Encryption Configuration below.
  late final Output<DatabaseEncryptionConfiguration?> encryptionConfiguration;

  /// AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  late final Output<String?> expectedBucketOwner;

  /// Boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are *not* recoverable.
  late final Output<bool?> forceDestroy;

  /// Name of the database to create.
  late final Output<String> name;

  /// Key-value map of custom metadata properties for the database definition.
  late final Output<Map<String, String>?> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the workgroup.
  late final Output<String?> workgroup;

  Database(
    String name, {
    DatabaseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:athena/database:Database',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aclConfiguration =
        registerOutput<DatabaseAclConfiguration?>('aclConfiguration');
    this.bucket = registerOutput<String?>('bucket');
    this.comment = registerOutput<String?>('comment');
    this.encryptionConfiguration =
        registerOutput<DatabaseEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<Map<String, String>?>('properties');
    this.region = registerOutput<String>('region');
    this.workgroup = registerOutput<String?>('workgroup');
  }
}
