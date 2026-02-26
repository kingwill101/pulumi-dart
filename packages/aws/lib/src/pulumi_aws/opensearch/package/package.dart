import 'package:pulumi/pulumi.dart';
import '../package_package_source/package_package_source.dart';
import 'package_args.dart';

/// Manages an AWS Opensearch Package.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const myOpensearchPackages = new aws.s3.Bucket("my_opensearch_packages", {bucket: "my-opensearch-packages"});
/// const example = new aws.s3.BucketObjectv2("example", {
/// bucket: myOpensearchPackages.bucket,
/// key: "example.txt",
/// source: new pulumi.asset.FileAsset("./example.txt"),
/// etag: std.filemd5({
/// input: "./example.txt",
/// }).then(invoke => invoke.result),
/// });
/// const examplePackage = new aws.opensearch.Package("example", {
/// packageName: "example-txt",
/// packageSource: {
/// s3BucketName: myOpensearchPackages.bucket,
/// s3Key: example.key,
/// },
/// packageType: "TXT-DICTIONARY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// my_opensearch_packages = aws.s3.Bucket("my_opensearch_packages", bucket="my-opensearch-packages")
/// example = aws.s3.BucketObjectv2("example",
/// bucket=my_opensearch_packages.bucket,
/// key="example.txt",
/// source=pulumi.FileAsset("./example.txt"),
/// etag=std.filemd5(input="./example.txt").result)
/// example_package = aws.opensearch.Package("example",
/// package_name="example-txt",
/// package_source={
/// "s3_bucket_name": my_opensearch_packages.bucket,
/// "s3_key": example.key,
/// },
/// package_type="TXT-DICTIONARY")
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
/// var myOpensearchPackages = new Aws.S3.Bucket("my_opensearch_packages", new()
/// {
/// BucketName = "my-opensearch-packages",
/// });
///
/// var example = new Aws.S3.BucketObjectv2("example", new()
/// {
/// Bucket = myOpensearchPackages.BucketName,
/// Key = "example.txt",
/// Source = new FileAsset("./example.txt"),
/// Etag = Std.Filemd5.Invoke(new()
/// {
/// Input = "./example.txt",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// var examplePackage = new Aws.OpenSearch.Package("example", new()
/// {
/// PackageName = "example-txt",
/// PackageSource = new Aws.OpenSearch.Inputs.PackagePackageSourceArgs
/// {
/// S3BucketName = myOpensearchPackages.BucketName,
/// S3Key = example.Key,
/// },
/// PackageType = "TXT-DICTIONARY",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myOpensearchPackages, err := s3.NewBucket(ctx, "my_opensearch_packages", &s3.BucketArgs{
/// Bucket: pulumi.String("my-opensearch-packages"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFilemd5, err := std.Filemd5(ctx, &std.Filemd5Args{
/// Input: "./example.txt",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// example, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// Bucket: myOpensearchPackages.Bucket,
/// Key:    pulumi.String("example.txt"),
/// Source: pulumi.NewFileAsset("./example.txt"),
/// Etag:   pulumi.String(invokeFilemd5.Result),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = opensearch.NewPackage(ctx, "example", &opensearch.PackageArgs{
/// PackageName: pulumi.String("example-txt"),
/// PackageSource: &opensearch.PackagePackageSourceArgs{
/// S3BucketName: myOpensearchPackages.Bucket,
/// S3Key:        example.Key,
/// },
/// PackageType: pulumi.String("TXT-DICTIONARY"),
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
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filemd5Args;
/// import com.pulumi.aws.opensearch.Package;
/// import com.pulumi.aws.opensearch.PackageArgs;
/// import com.pulumi.aws.opensearch.inputs.PackagePackageSourceArgs;
/// import com.pulumi.asset.FileAsset;
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
/// var myOpensearchPackages = new Bucket("myOpensearchPackages", BucketArgs.builder()
/// .bucket("my-opensearch-packages")
/// .build());
///
/// var example = new BucketObjectv2("example", BucketObjectv2Args.builder()
/// .bucket(myOpensearchPackages.bucket())
/// .key("example.txt")
/// .source(new FileAsset("./example.txt"))
/// .etag(StdFunctions.filemd5(Filemd5Args.builder()
/// .input("./example.txt")
/// .build()).result())
/// .build());
///
/// var examplePackage = new Package("examplePackage", PackageArgs.builder()
/// .packageName("example-txt")
/// .packageSource(PackagePackageSourceArgs.builder()
/// .s3BucketName(myOpensearchPackages.bucket())
/// .s3Key(example.key())
/// .build())
/// .packageType("TXT-DICTIONARY")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myOpensearchPackages:
/// type: aws:s3:Bucket
/// name: my_opensearch_packages
/// properties:
/// bucket: my-opensearch-packages
/// example:
/// type: aws:s3:BucketObjectv2
/// properties:
/// bucket: ${myOpensearchPackages.bucket}
/// key: example.txt
/// source:
/// fn::FileAsset: ./example.txt
/// etag:
/// fn::invoke:
/// function: std:filemd5
/// arguments:
/// input: ./example.txt
/// return: result
/// examplePackage:
/// type: aws:opensearch:Package
/// name: example
/// properties:
/// packageName: example-txt
/// packageSource:
/// s3BucketName: ${myOpensearchPackages.bucket}
/// s3Key: ${example.key}
/// packageType: TXT-DICTIONARY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS Opensearch Packages using the Package ID. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/package:Package example package-id
/// ```
class Package extends CustomResource {
  /// The current version of the package.
  late final Output<String> availablePackageVersion;

  /// Engine version that the package is compatible with. This argument is required and only valid when <span pulumi-lang-nodejs="`packageType`" pulumi-lang-dotnet="`PackageType`" pulumi-lang-go="`packageType`" pulumi-lang-python="`package_type`" pulumi-lang-yaml="`packageType`" pulumi-lang-java="`packageType`">`package_type`</span> is `ZIP-PLUGIN`. Format: `OpenSearch_X.Y` or `Elasticsearch_X.Y`, where `X` and `Y` are the major and minor version numbers, respectively.
  late final Output<String?> engineVersion;

  /// Description of the package.
  late final Output<String?> packageDescription;
  late final Output<String> packageId;

  /// Unique name for the package.
  late final Output<String> packageName;

  /// Configuration block for the package source options.
  late final Output<PackagePackageSource> packageSource;

  /// The type of package. Valid values are `TXT-DICTIONARY`, `ZIP-PLUGIN`, `PACKAGE-LICENSE` and `PACKAGE-CONFIG`.
  late final Output<String> packageType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Package(
    String name, {
    PackageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/package:Package',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availablePackageVersion = Output.createUnknown<String>();
    this.engineVersion = Output.createUnknown<String?>();
    this.packageDescription = Output.createUnknown<String?>();
    this.packageId = Output.createUnknown<String>();
    this.packageName = Output.createUnknown<String>();
    this.packageSource = Output.createUnknown<PackagePackageSource>();
    this.packageType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
