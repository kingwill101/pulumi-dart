import 'package:pulumi/pulumi.dart';
import 'layer_version_args.dart';

/// Manages an AWS Lambda Layer Version. Use this resource to share code and dependencies across multiple Lambda functions.
///
/// For information about Lambda Layers and how to use them, see [AWS Lambda Layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
///
/// > **Note:** Setting <span pulumi-lang-nodejs="`skipDestroy`" pulumi-lang-dotnet="`SkipDestroy`" pulumi-lang-go="`skipDestroy`" pulumi-lang-python="`skip_destroy`" pulumi-lang-yaml="`skipDestroy`" pulumi-lang-java="`skipDestroy`">`skip_destroy`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> means that the AWS Provider will not destroy any layer version, even when running `pulumi destroy`. Layer versions are thus intentional dangling resources that are not managed by Pulumi and may incur extra expense in your AWS account.
///
/// ## Example Usage
///
/// ### Basic Layer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.LayerVersion("example", {
/// code: new pulumi.asset.FileArchive("lambda_layer_payload.zip"),
/// layerName: "lambda_layer_name",
/// compatibleRuntimes: ["nodejs20.x"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.LayerVersion("example",
/// code=pulumi.FileArchive("lambda_layer_payload.zip"),
/// layer_name="lambda_layer_name",
/// compatible_runtimes=["nodejs20.x"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.LayerVersion("example", new()
/// {
/// Code = new FileArchive("lambda_layer_payload.zip"),
/// LayerName = "lambda_layer_name",
/// CompatibleRuntimes = new[]
/// {
/// "nodejs20.x",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// Code:      pulumi.NewFileArchive("lambda_layer_payload.zip"),
/// LayerName: pulumi.String("lambda_layer_name"),
/// CompatibleRuntimes: pulumi.StringArray{
/// pulumi.String("nodejs20.x"),
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
/// import com.pulumi.aws.lambda.LayerVersion;
/// import com.pulumi.aws.lambda.LayerVersionArgs;
/// import com.pulumi.asset.FileArchive;
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
/// var example = new LayerVersion("example", LayerVersionArgs.builder()
/// .code(new FileArchive("lambda_layer_payload.zip"))
/// .layerName("lambda_layer_name")
/// .compatibleRuntimes("nodejs20.x")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:LayerVersion
/// properties:
/// code:
/// fn::FileArchive: lambda_layer_payload.zip
/// layerName: lambda_layer_name
/// compatibleRuntimes:
/// - nodejs20.x
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Layer with S3 Source
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.LayerVersion("example", {
/// s3Bucket: lambdaLayerZip.bucket,
/// s3Key: lambdaLayerZip.key,
/// layerName: "lambda_layer_name",
/// compatibleRuntimes: [
/// "nodejs20.x",
/// "python3.12",
/// ],
/// compatibleArchitectures: [
/// "x86_64",
/// "arm64",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.LayerVersion("example",
/// s3_bucket=lambda_layer_zip["bucket"],
/// s3_key=lambda_layer_zip["key"],
/// layer_name="lambda_layer_name",
/// compatible_runtimes=[
/// "nodejs20.x",
/// "python3.12",
/// ],
/// compatible_architectures=[
/// "x86_64",
/// "arm64",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Lambda.LayerVersion("example", new()
/// {
/// S3Bucket = lambdaLayerZip.Bucket,
/// S3Key = lambdaLayerZip.Key,
/// LayerName = "lambda_layer_name",
/// CompatibleRuntimes = new[]
/// {
/// "nodejs20.x",
/// "python3.12",
/// },
/// CompatibleArchitectures = new[]
/// {
/// "x86_64",
/// "arm64",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// S3Bucket:  pulumi.Any(lambdaLayerZip.Bucket),
/// S3Key:     pulumi.Any(lambdaLayerZip.Key),
/// LayerName: pulumi.String("lambda_layer_name"),
/// CompatibleRuntimes: pulumi.StringArray{
/// pulumi.String("nodejs20.x"),
/// pulumi.String("python3.12"),
/// },
/// CompatibleArchitectures: pulumi.StringArray{
/// pulumi.String("x86_64"),
/// pulumi.String("arm64"),
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
/// import com.pulumi.aws.lambda.LayerVersion;
/// import com.pulumi.aws.lambda.LayerVersionArgs;
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
/// var example = new LayerVersion("example", LayerVersionArgs.builder()
/// .s3Bucket(lambdaLayerZip.bucket())
/// .s3Key(lambdaLayerZip.key())
/// .layerName("lambda_layer_name")
/// .compatibleRuntimes(
/// "nodejs20.x",
/// "python3.12")
/// .compatibleArchitectures(
/// "x86_64",
/// "arm64")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:LayerVersion
/// properties:
/// s3Bucket: ${lambdaLayerZip.bucket}
/// s3Key: ${lambdaLayerZip.key}
/// layerName: lambda_layer_name
/// compatibleRuntimes:
/// - nodejs20.x
/// - python3.12
/// compatibleArchitectures:
/// - x86_64
/// - arm64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Layer with Multiple Runtimes and Architectures
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.lambda.LayerVersion("example", {
/// code: new pulumi.asset.FileArchive("lambda_layer_payload.zip"),
/// layerName: "multi_runtime_layer",
/// description: "Shared utilities for Lambda functions",
/// licenseInfo: "MIT",
/// sourceCodeHash: std.filebase64sha256({
/// input: "lambda_layer_payload.zip",
/// }).then(invoke => invoke.result),
/// compatibleRuntimes: [
/// "nodejs18.x",
/// "nodejs20.x",
/// "python3.11",
/// "python3.12",
/// ],
/// compatibleArchitectures: [
/// "x86_64",
/// "arm64",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda_.LayerVersion("example",
/// code=pulumi.FileArchive("lambda_layer_payload.zip"),
/// layer_name="multi_runtime_layer",
/// description="Shared utilities for Lambda functions",
/// license_info="MIT",
/// source_code_hash=std.filebase64sha256(input="lambda_layer_payload.zip").result,
/// compatible_runtimes=[
/// "nodejs18.x",
/// "nodejs20.x",
/// "python3.11",
/// "python3.12",
/// ],
/// compatible_architectures=[
/// "x86_64",
/// "arm64",
/// ])
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
/// var example = new Aws.Lambda.LayerVersion("example", new()
/// {
/// Code = new FileArchive("lambda_layer_payload.zip"),
/// LayerName = "multi_runtime_layer",
/// Description = "Shared utilities for Lambda functions",
/// LicenseInfo = "MIT",
/// SourceCodeHash = Std.Filebase64sha256.Invoke(new()
/// {
/// Input = "lambda_layer_payload.zip",
/// }).Apply(invoke => invoke.Result),
/// CompatibleRuntimes = new[]
/// {
/// "nodejs18.x",
/// "nodejs20.x",
/// "python3.11",
/// "python3.12",
/// },
/// CompatibleArchitectures = new[]
/// {
/// "x86_64",
/// "arm64",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFilebase64sha256, err := std.Filebase64sha256(ctx, &std.Filebase64sha256Args{
/// Input: "lambda_layer_payload.zip",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// Code:           pulumi.NewFileArchive("lambda_layer_payload.zip"),
/// LayerName:      pulumi.String("multi_runtime_layer"),
/// Description:    pulumi.String("Shared utilities for Lambda functions"),
/// LicenseInfo:    pulumi.String("MIT"),
/// SourceCodeHash: pulumi.String(invokeFilebase64sha256.Result),
/// CompatibleRuntimes: pulumi.StringArray{
/// pulumi.String("nodejs18.x"),
/// pulumi.String("nodejs20.x"),
/// pulumi.String("python3.11"),
/// pulumi.String("python3.12"),
/// },
/// CompatibleArchitectures: pulumi.StringArray{
/// pulumi.String("x86_64"),
/// pulumi.String("arm64"),
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
/// import com.pulumi.aws.lambda.LayerVersion;
/// import com.pulumi.aws.lambda.LayerVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64sha256Args;
/// import com.pulumi.asset.FileArchive;
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
/// var example = new LayerVersion("example", LayerVersionArgs.builder()
/// .code(new FileArchive("lambda_layer_payload.zip"))
/// .layerName("multi_runtime_layer")
/// .description("Shared utilities for Lambda functions")
/// .licenseInfo("MIT")
/// .sourceCodeHash(StdFunctions.filebase64sha256(Filebase64sha256Args.builder()
/// .input("lambda_layer_payload.zip")
/// .build()).result())
/// .compatibleRuntimes(
/// "nodejs18.x",
/// "nodejs20.x",
/// "python3.11",
/// "python3.12")
/// .compatibleArchitectures(
/// "x86_64",
/// "arm64")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lambda:LayerVersion
/// properties:
/// code:
/// fn::FileArchive: lambda_layer_payload.zip
/// layerName: multi_runtime_layer
/// description: Shared utilities for Lambda functions
/// licenseInfo: MIT
/// sourceCodeHash:
/// fn::invoke:
/// function: std:filebase64sha256
/// arguments:
/// input: lambda_layer_payload.zip
/// return: result
/// compatibleRuntimes:
/// - nodejs18.x
/// - nodejs20.x
/// - python3.11
/// - python3.12
/// compatibleArchitectures:
/// - x86_64
/// - arm64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Specifying the Deployment Package
///
/// AWS Lambda Layers expect source code to be provided as a deployment package whose structure varies depending on which <span pulumi-lang-nodejs="`compatibleRuntimes`" pulumi-lang-dotnet="`CompatibleRuntimes`" pulumi-lang-go="`compatibleRuntimes`" pulumi-lang-python="`compatible_runtimes`" pulumi-lang-yaml="`compatibleRuntimes`" pulumi-lang-java="`compatibleRuntimes`">`compatible_runtimes`</span> this layer specifies. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) for the valid values of <span pulumi-lang-nodejs="`compatibleRuntimes`" pulumi-lang-dotnet="`CompatibleRuntimes`" pulumi-lang-go="`compatibleRuntimes`" pulumi-lang-python="`compatible_runtimes`" pulumi-lang-yaml="`compatibleRuntimes`" pulumi-lang-java="`compatibleRuntimes`">`compatible_runtimes`</span>.
///
/// Once you have created your deployment package you can specify it either directly as a local file (using the <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span> argument) or indirectly via Amazon S3 (using the <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>, <span pulumi-lang-nodejs="`s3Key`" pulumi-lang-dotnet="`S3Key`" pulumi-lang-go="`s3Key`" pulumi-lang-python="`s3_key`" pulumi-lang-yaml="`s3Key`" pulumi-lang-java="`s3Key`">`s3_key`</span> and <span pulumi-lang-nodejs="`s3ObjectVersion`" pulumi-lang-dotnet="`S3ObjectVersion`" pulumi-lang-go="`s3ObjectVersion`" pulumi-lang-python="`s3_object_version`" pulumi-lang-yaml="`s3ObjectVersion`" pulumi-lang-java="`s3ObjectVersion`">`s3_object_version`</span> arguments). When providing the deployment package via S3 it may be useful to use the <span pulumi-lang-nodejs="`aws.s3.BucketObjectv2`" pulumi-lang-dotnet="`aws.s3.BucketObjectv2`" pulumi-lang-go="`s3.BucketObjectv2`" pulumi-lang-python="`s3.BucketObjectv2`" pulumi-lang-yaml="`aws.s3.BucketObjectv2`" pulumi-lang-java="`aws.s3.BucketObjectv2`">`aws.s3.BucketObjectv2`</span> resource to upload it.
///
/// For larger deployment packages it is recommended by Amazon to upload via S3, since the S3 API has better support for uploading large files efficiently.
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Layers using <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/layerVersion:LayerVersion example arn:aws:lambda:us-west-2:123456789012:layer:example:1
/// ```
class LayerVersion extends CustomResource {
  /// ARN of the Lambda Layer with version.
  late final Output<String> arn;

  /// Path to the function's deployment package within the local filesystem. If defined, The `s3_`-prefixed options cannot be used.
  late final Output<dynamic> code;

  /// Base64-encoded representation of raw SHA-256 sum of the zip file.
  late final Output<String> codeSha256;

  /// List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleArchitectures) this layer is compatible with. Currently <span pulumi-lang-nodejs="`x8664`" pulumi-lang-dotnet="`X8664`" pulumi-lang-go="`x8664`" pulumi-lang-python="`x86_64`" pulumi-lang-yaml="`x8664`" pulumi-lang-java="`x8664`">`x86_64`</span> and <span pulumi-lang-nodejs="`arm64`" pulumi-lang-dotnet="`Arm64`" pulumi-lang-go="`arm64`" pulumi-lang-python="`arm64`" pulumi-lang-yaml="`arm64`" pulumi-lang-java="`arm64`">`arm64`</span> can be specified.
  late final Output<List<String>?> compatibleArchitectures;

  /// List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) this layer is compatible with. Up to 15 runtimes can be specified.
  late final Output<List<String>?> compatibleRuntimes;

  /// Date this resource was created.
  late final Output<String> createdDate;

  /// Description of what your Lambda Layer does.
  late final Output<String?> description;

  /// ARN of the Lambda Layer without version.
  late final Output<String> layerArn;

  /// Unique name for your Lambda Layer.
  ///
  /// The following arguments are optional:
  late final Output<String> layerName;

  /// License info for your Lambda Layer. See [License Info](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-LicenseInfo).
  late final Output<String?> licenseInfo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// S3 bucket location containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>. This bucket must reside in the same AWS region where you are creating the Lambda function.
  late final Output<String?> s3Bucket;

  /// S3 key of an object containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>.
  late final Output<String?> s3Key;

  /// Object version containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>.
  late final Output<String?> s3ObjectVersion;

  /// ARN of a signing job.
  late final Output<String> signingJobArn;

  /// ARN for a signing profile version.
  late final Output<String> signingProfileVersionArn;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When this is not set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, changing any of <span pulumi-lang-nodejs="`compatibleArchitectures`" pulumi-lang-dotnet="`CompatibleArchitectures`" pulumi-lang-go="`compatibleArchitectures`" pulumi-lang-python="`compatible_architectures`" pulumi-lang-yaml="`compatibleArchitectures`" pulumi-lang-java="`compatibleArchitectures`">`compatible_architectures`</span>, <span pulumi-lang-nodejs="`compatibleRuntimes`" pulumi-lang-dotnet="`CompatibleRuntimes`" pulumi-lang-go="`compatibleRuntimes`" pulumi-lang-python="`compatible_runtimes`" pulumi-lang-yaml="`compatibleRuntimes`" pulumi-lang-java="`compatibleRuntimes`">`compatible_runtimes`</span>, <span pulumi-lang-nodejs="`description`" pulumi-lang-dotnet="`Description`" pulumi-lang-go="`description`" pulumi-lang-python="`description`" pulumi-lang-yaml="`description`" pulumi-lang-java="`description`">`description`</span>, <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>, <span pulumi-lang-nodejs="`layerName`" pulumi-lang-dotnet="`LayerName`" pulumi-lang-go="`layerName`" pulumi-lang-python="`layer_name`" pulumi-lang-yaml="`layerName`" pulumi-lang-java="`layerName`">`layer_name`</span>, <span pulumi-lang-nodejs="`licenseInfo`" pulumi-lang-dotnet="`LicenseInfo`" pulumi-lang-go="`licenseInfo`" pulumi-lang-python="`license_info`" pulumi-lang-yaml="`licenseInfo`" pulumi-lang-java="`licenseInfo`">`license_info`</span>, <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>, <span pulumi-lang-nodejs="`s3Key`" pulumi-lang-dotnet="`S3Key`" pulumi-lang-go="`s3Key`" pulumi-lang-python="`s3_key`" pulumi-lang-yaml="`s3Key`" pulumi-lang-java="`s3Key`">`s3_key`</span>, <span pulumi-lang-nodejs="`s3ObjectVersion`" pulumi-lang-dotnet="`S3ObjectVersion`" pulumi-lang-go="`s3ObjectVersion`" pulumi-lang-python="`s3_object_version`" pulumi-lang-yaml="`s3ObjectVersion`" pulumi-lang-java="`s3ObjectVersion`">`s3_object_version`</span>, or <span pulumi-lang-nodejs="`sourceCodeHash`" pulumi-lang-dotnet="`SourceCodeHash`" pulumi-lang-go="`sourceCodeHash`" pulumi-lang-python="`source_code_hash`" pulumi-lang-yaml="`sourceCodeHash`" pulumi-lang-java="`sourceCodeHash`">`source_code_hash`</span> forces deletion of the existing layer version and creation of a new layer version.
  late final Output<bool?> skipDestroy;

  /// Virtual attribute used to trigger replacement when source code changes. Must be set to a base64-encoded SHA256 hash of the package file specified with either <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span> or <span pulumi-lang-nodejs="`s3Key`" pulumi-lang-dotnet="`S3Key`" pulumi-lang-go="`s3Key`" pulumi-lang-python="`s3_key`" pulumi-lang-yaml="`s3Key`" pulumi-lang-java="`s3Key`">`s3_key`</span>. The usual way to set this is `filebase64sha256("file.zip")` or `base64sha256(file("file.zip"))`, where "file.zip" is the local filename of the lambda layer source archive.
  late final Output<String> sourceCodeHash;

  /// Size in bytes of the function .zip file.
  late final Output<int> sourceCodeSize;

  /// Lambda Layer version.
  late final Output<String> version;

  LayerVersion(
    String name, {
    LayerVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/layerVersion:LayerVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.code = Output.createUnknown<dynamic>();
    this.codeSha256 = Output.createUnknown<String>();
    this.compatibleArchitectures = Output.createUnknown<List<String>?>();
    this.compatibleRuntimes = Output.createUnknown<List<String>?>();
    this.createdDate = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.layerArn = Output.createUnknown<String>();
    this.layerName = Output.createUnknown<String>();
    this.licenseInfo = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.s3Bucket = Output.createUnknown<String?>();
    this.s3Key = Output.createUnknown<String?>();
    this.s3ObjectVersion = Output.createUnknown<String?>();
    this.signingJobArn = Output.createUnknown<String>();
    this.signingProfileVersionArn = Output.createUnknown<String>();
    this.skipDestroy = Output.createUnknown<bool?>();
    this.sourceCodeHash = Output.createUnknown<String>();
    this.sourceCodeSize = Output.createUnknown<int>();
    this.version = Output.createUnknown<String>();
  }
}
