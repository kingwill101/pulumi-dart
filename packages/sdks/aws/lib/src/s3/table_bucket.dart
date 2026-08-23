import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_args.dart';
import 'table_bucket_encryption_configuration.dart';
import 'table_bucket_maintenance_configuration.dart';
import 'table_bucket_state.dart';

/// Resource for managing an Amazon S3 Tables Table Bucket.
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
///     var example = new Aws.S3Tables.TableBucket("example", new()
///     {
///         Name = "example-bucket",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3tables"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// 			Name: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3tables_tablebucket" "example" {
///   name = "example-bucket"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new TableBucket("example", TableBucketArgs.builder()
///             .name("example-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3tables:TableBucket
///     properties:
///       name: example-bucket
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the S3 Tables Table Bucket.
///
///
/// Using `pulumi import`, import S3 Tables Table Bucket using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucket:TableBucket example arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket
/// ```
class TableBucket extends pulumi.CustomResource {
  /// ARN of the table bucket.
  late final pulumi.Output<String> arn;
  /// Date and time when the bucket was created.
  late final pulumi.Output<String> createdAt;
  /// Encryption configuration for the table bucket. See `encryptionConfiguration` below.
  late final pulumi.Output<TableBucketEncryptionConfiguration> encryptionConfiguration;
  /// Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final pulumi.Output<bool> forceDestroy;
  /// Maintenance configuration for the table bucket. See `maintenanceConfiguration` below.
  late final pulumi.Output<TableBucketMaintenanceConfiguration> maintenanceConfiguration;
  /// Name of the table bucket. Must be between 3 and 63 characters in length. Can consist of lowercase letters, numbers, and hyphens, and must begin and end with a lowercase letter or number. A full list of bucket naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#table-buckets-naming-rules).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Account ID of the account that owns the table bucket.
  late final pulumi.Output<String> ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [TableBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TableBucket]. {@macro pulumi_s3_tables_table_bucket_table_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TableBucket(
    String name, {
    TableBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucket:TableBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    encryptionConfiguration = registerOutput<TableBucketEncryptionConfiguration>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBucketEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceDestroy = registerOutput<bool>('forceDestroy');
    maintenanceConfiguration = registerOutput<TableBucketMaintenanceConfiguration>('maintenanceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBucketMaintenanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [TableBucket] resource's state with the given [name] and [id].
  static TableBucket get(
    String name,
    pulumi.Input<String> id, {
    TableBucketState? state,
  }) {
    return TableBucket._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TableBucket._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucket:TableBucket',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    encryptionConfiguration = registerOutput<TableBucketEncryptionConfiguration>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBucketEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceDestroy = registerOutput<bool>('forceDestroy');
    maintenanceConfiguration = registerOutput<TableBucketMaintenanceConfiguration>('maintenanceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableBucketMaintenanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
