import 'package:pulumi/pulumi.dart';
import '../table_bucket_encryption_configuration/table_bucket_encryption_configuration.dart';
import '../table_bucket_maintenance_configuration/table_bucket_maintenance_configuration.dart';
import 'table_bucket_args.dart';

/// Resource for managing an Amazon S3 Tables Table Bucket.
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
/// const example = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3tables.TableBucket("example", name="example-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3Tables.TableBucket("example", new()
/// {
/// Name = "example-bucket",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// Name: pulumi.String("example-bucket"),
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
/// import com.pulumi.aws.s3tables.TableBucket;
/// import com.pulumi.aws.s3tables.TableBucketArgs;
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
/// var example = new TableBucket("example", TableBucketArgs.builder()
/// .name("example-bucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3tables:TableBucket
/// properties:
/// name: example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Bucket using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucket:TableBucket example arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket
/// ```
class TableBucket extends CustomResource {
  /// ARN of the table bucket.
  late final Output<String> arn;

  /// Date and time when the bucket was created.
  late final Output<String> createdAt;

  /// A single table bucket encryption configuration object.
  /// See <span pulumi-lang-nodejs="`encryptionConfiguration`" pulumi-lang-dotnet="`EncryptionConfiguration`" pulumi-lang-go="`encryptionConfiguration`" pulumi-lang-python="`encryption_configuration`" pulumi-lang-yaml="`encryptionConfiguration`" pulumi-lang-java="`encryptionConfiguration`">`encryption_configuration`</span> below.
  late final Output<TableBucketEncryptionConfiguration?>
      encryptionConfiguration;

  /// Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final Output<bool> forceDestroy;

  /// A single table bucket maintenance configuration object.
  /// See <span pulumi-lang-nodejs="`maintenanceConfiguration`" pulumi-lang-dotnet="`MaintenanceConfiguration`" pulumi-lang-go="`maintenanceConfiguration`" pulumi-lang-python="`maintenance_configuration`" pulumi-lang-yaml="`maintenanceConfiguration`" pulumi-lang-java="`maintenanceConfiguration`">`maintenance_configuration`</span> below.
  late final Output<TableBucketMaintenanceConfiguration>
      maintenanceConfiguration;

  /// Name of the table bucket.
  /// Must be between 3 and 63 characters in length.
  /// Can consist of lowercase letters, numbers, and hyphens, and must begin and end with a lowercase letter or number.
  /// A full list of bucket naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#table-buckets-naming-rules).
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Account ID of the account that owns the table bucket.
  late final Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  TableBucket(
    String name, {
    TableBucketArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucket:TableBucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.encryptionConfiguration =
        Output.createUnknown<TableBucketEncryptionConfiguration?>();
    this.forceDestroy = Output.createUnknown<bool>();
    this.maintenanceConfiguration =
        Output.createUnknown<TableBucketMaintenanceConfiguration>();
    this.name = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
