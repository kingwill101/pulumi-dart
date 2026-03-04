import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_state.dart';

/// Resource for managing an Amazon S3 Tables Namespace.
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
/// const exampleTableBucket = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// const example = new aws.s3tables.Namespace("example", {
///     namespace: "example_namespace",
///     tableBucketArn: exampleTableBucket.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table_bucket = aws.s3tables.TableBucket("example", name="example-bucket")
/// example = aws.s3tables.Namespace("example",
///     namespace="example_namespace",
///     table_bucket_arn=example_table_bucket.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleTableBucket = new Aws.S3Tables.TableBucket("example", new()
///     {
///         Name = "example-bucket",
///     });
///
///     var example = new Aws.S3Tables.Namespace("example", new()
///     {
///         NameSpace = "example_namespace",
///         TableBucketArn = exampleTableBucket.Arn,
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
/// 		exampleTableBucket, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// 			Name: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3tables.NewNamespace(ctx, "example", &s3tables.NamespaceArgs{
/// 			Namespace:      pulumi.String("example_namespace"),
/// 			TableBucketArn: exampleTableBucket.Arn,
/// 		})
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
/// import com.pulumi.aws.s3tables.TableBucket;
/// import com.pulumi.aws.s3tables.TableBucketArgs;
/// import com.pulumi.aws.s3tables.Namespace;
/// import com.pulumi.aws.s3tables.NamespaceArgs;
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
///         var exampleTableBucket = new TableBucket("exampleTableBucket", TableBucketArgs.builder()
///             .name("example-bucket")
///             .build());
///
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespace("example_namespace")
///             .tableBucketArn(exampleTableBucket.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3tables:Namespace
///     properties:
///       namespace: example_namespace
///       tableBucketArn: ${exampleTableBucket.arn}
///   exampleTableBucket:
///     type: aws:s3tables:TableBucket
///     name: example
///     properties:
///       name: example-bucket
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Namespace using the `table_bucket_arn` and the value of `namespace`, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/namespace:Namespace example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace'
/// ```
class Namespace extends pulumi.CustomResource {
  /// Date and time when the namespace was created.
  late final pulumi.Output<String> createdAt;

  /// Account ID of the account that created the namespace.
  late final pulumi.Output<String> createdBy;

  /// Name of the namespace.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final pulumi.Output<String> namespace;

  /// Account ID of the account that owns the namespace.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  late final pulumi.Output<String> tableBucketArn;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_s3_tables_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:s3tables/namespace:Namespace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    namespace = registerOutput<String>('namespace');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tableBucketArn = registerOutput<String>('tableBucketArn');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:s3tables/namespace:Namespace',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    namespace = registerOutput<String>('namespace');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    tableBucketArn = registerOutput<String>('tableBucketArn');
  }
}
