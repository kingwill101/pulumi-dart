import 'package:pulumi/pulumi.dart';
import 'namespace_args3.dart';

/// Resource for managing an Amazon S3 Tables Namespace.
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
/// const exampleTableBucket = new aws.s3tables.TableBucket("example", {name: "example-bucket"});
/// const example = new aws.s3tables.Namespace("example", {
/// namespace: "example_namespace",
/// tableBucketArn: exampleTableBucket.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table_bucket = aws.s3tables.TableBucket("example", name="example-bucket")
/// example = aws.s3tables.Namespace("example",
/// namespace="example_namespace",
/// table_bucket_arn=example_table_bucket.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleTableBucket = new Aws.S3Tables.TableBucket("example", new()
/// {
/// Name = "example-bucket",
/// });
///
/// var example = new Aws.S3Tables.Namespace("example", new()
/// {
/// NameSpace = "example_namespace",
/// TableBucketArn = exampleTableBucket.Arn,
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
/// exampleTableBucket, err := s3tables.NewTableBucket(ctx, "example", &s3tables.TableBucketArgs{
/// Name: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3tables.NewNamespace(ctx, "example", &s3tables.NamespaceArgs{
/// Namespace:      pulumi.String("example_namespace"),
/// TableBucketArn: exampleTableBucket.Arn,
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleTableBucket = new TableBucket("exampleTableBucket", TableBucketArgs.builder()
/// .name("example-bucket")
/// .build());
///
/// var example = new Namespace("example", NamespaceArgs.builder()
/// .namespace("example_namespace")
/// .tableBucketArn(exampleTableBucket.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3tables:Namespace
/// properties:
/// namespace: example_namespace
/// tableBucketArn: ${exampleTableBucket.arn}
/// exampleTableBucket:
/// type: aws:s3tables:TableBucket
/// name: example
/// properties:
/// name: example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Namespace using the <span pulumi-lang-nodejs="`tableBucketArn`" pulumi-lang-dotnet="`TableBucketArn`" pulumi-lang-go="`tableBucketArn`" pulumi-lang-python="`table_bucket_arn`" pulumi-lang-yaml="`tableBucketArn`" pulumi-lang-java="`tableBucketArn`">`table_bucket_arn`</span> and the value of <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/namespace:Namespace example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace'
/// ```
class Namespace3 extends CustomResource {
  /// Date and time when the namespace was created.
  late final Output<String> createdAt;

  /// Account ID of the account that created the namespace.
  late final Output<String> createdBy;

  /// Name of the namespace.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final Output<String> namespace;

  /// Account ID of the account that owns the namespace.
  late final Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  late final Output<String> tableBucketArn;

  Namespace3(
    String name, {
    NamespaceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/namespace:Namespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = Output.createUnknown<String>();
    this.createdBy = Output.createUnknown<String>();
    this.namespace = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tableBucketArn = Output.createUnknown<String>();
  }
}
