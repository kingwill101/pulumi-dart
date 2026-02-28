import 'package:pulumi/pulumi.dart' as pulumi;
import 'layer_version_args.dart';

/// Manages an AWS Lambda Layer Version. Use this resource to share code and dependencies across multiple Lambda functions.
///
/// For information about Lambda Layers and how to use them, see [AWS Lambda Layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
///
/// > **Note:** Setting `skip_destroy` to `true` means that the AWS Provider will not destroy any layer version, even when running `pulumi destroy`. Layer versions are thus intentional dangling resources that are not managed by Pulumi and may incur extra expense in your AWS account.
///
/// ## Example Usage
///
/// ### Basic Layer
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.LayerVersion("example", {
///     code: new pulumi.asset.FileArchive("lambda_layer_payload.zip"),
///     layerName: "lambda_layer_name",
///     compatibleRuntimes: ["nodejs20.x"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.LayerVersion("example",
///     code=pulumi.FileArchive("lambda_layer_payload.zip"),
///     layer_name="lambda_layer_name",
///     compatible_runtimes=["nodejs20.x"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.LayerVersion("example", new()
///     {
///         Code = new FileArchive("lambda_layer_payload.zip"),
///         LayerName = "lambda_layer_name",
///         CompatibleRuntimes = new[]
///         {
///             "nodejs20.x",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// 			Code:      pulumi.NewFileArchive("lambda_layer_payload.zip"),
/// 			LayerName: pulumi.String("lambda_layer_name"),
/// 			CompatibleRuntimes: pulumi.StringArray{
/// 				pulumi.String("nodejs20.x"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new LayerVersion("example", LayerVersionArgs.builder()
///             .code(new FileArchive("lambda_layer_payload.zip"))
///             .layerName("lambda_layer_name")
///             .compatibleRuntimes("nodejs20.x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:LayerVersion
///     properties:
///       code:
///         fn::FileArchive: lambda_layer_payload.zip
///       layerName: lambda_layer_name
///       compatibleRuntimes:
///         - nodejs20.x
/// ```
///
///
/// ### Layer with S3 Source
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.LayerVersion("example", {
///     s3Bucket: lambdaLayerZip.bucket,
///     s3Key: lambdaLayerZip.key,
///     layerName: "lambda_layer_name",
///     compatibleRuntimes: [
///         "nodejs20.x",
///         "python3.12",
///     ],
///     compatibleArchitectures: [
///         "x86_64",
///         "arm64",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.LayerVersion("example",
///     s3_bucket=lambda_layer_zip["bucket"],
///     s3_key=lambda_layer_zip["key"],
///     layer_name="lambda_layer_name",
///     compatible_runtimes=[
///         "nodejs20.x",
///         "python3.12",
///     ],
///     compatible_architectures=[
///         "x86_64",
///         "arm64",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.LayerVersion("example", new()
///     {
///         S3Bucket = lambdaLayerZip.Bucket,
///         S3Key = lambdaLayerZip.Key,
///         LayerName = "lambda_layer_name",
///         CompatibleRuntimes = new[]
///         {
///             "nodejs20.x",
///             "python3.12",
///         },
///         CompatibleArchitectures = new[]
///         {
///             "x86_64",
///             "arm64",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// 			S3Bucket:  pulumi.Any(lambdaLayerZip.Bucket),
/// 			S3Key:     pulumi.Any(lambdaLayerZip.Key),
/// 			LayerName: pulumi.String("lambda_layer_name"),
/// 			CompatibleRuntimes: pulumi.StringArray{
/// 				pulumi.String("nodejs20.x"),
/// 				pulumi.String("python3.12"),
/// 			},
/// 			CompatibleArchitectures: pulumi.StringArray{
/// 				pulumi.String("x86_64"),
/// 				pulumi.String("arm64"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new LayerVersion("example", LayerVersionArgs.builder()
///             .s3Bucket(lambdaLayerZip.bucket())
///             .s3Key(lambdaLayerZip.key())
///             .layerName("lambda_layer_name")
///             .compatibleRuntimes(
///                 "nodejs20.x",
///                 "python3.12")
///             .compatibleArchitectures(
///                 "x86_64",
///                 "arm64")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:LayerVersion
///     properties:
///       s3Bucket: ${lambdaLayerZip.bucket}
///       s3Key: ${lambdaLayerZip.key}
///       layerName: lambda_layer_name
///       compatibleRuntimes:
///         - nodejs20.x
///         - python3.12
///       compatibleArchitectures:
///         - x86_64
///         - arm64
/// ```
///
///
/// ### Layer with Multiple Runtimes and Architectures
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.lambda.LayerVersion("example", {
///     code: new pulumi.asset.FileArchive("lambda_layer_payload.zip"),
///     layerName: "multi_runtime_layer",
///     description: "Shared utilities for Lambda functions",
///     licenseInfo: "MIT",
///     sourceCodeHash: std.filebase64sha256({
///         input: "lambda_layer_payload.zip",
///     }).then(invoke => invoke.result),
///     compatibleRuntimes: [
///         "nodejs18.x",
///         "nodejs20.x",
///         "python3.11",
///         "python3.12",
///     ],
///     compatibleArchitectures: [
///         "x86_64",
///         "arm64",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.lambda_.LayerVersion("example",
///     code=pulumi.FileArchive("lambda_layer_payload.zip"),
///     layer_name="multi_runtime_layer",
///     description="Shared utilities for Lambda functions",
///     license_info="MIT",
///     source_code_hash=std.filebase64sha256(input="lambda_layer_payload.zip").result,
///     compatible_runtimes=[
///         "nodejs18.x",
///         "nodejs20.x",
///         "python3.11",
///         "python3.12",
///     ],
///     compatible_architectures=[
///         "x86_64",
///         "arm64",
///     ])
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
///     var example = new Aws.Lambda.LayerVersion("example", new()
///     {
///         Code = new FileArchive("lambda_layer_payload.zip"),
///         LayerName = "multi_runtime_layer",
///         Description = "Shared utilities for Lambda functions",
///         LicenseInfo = "MIT",
///         SourceCodeHash = Std.Filebase64sha256.Invoke(new()
///         {
///             Input = "lambda_layer_payload.zip",
///         }).Apply(invoke => invoke.Result),
///         CompatibleRuntimes = new[]
///         {
///             "nodejs18.x",
///             "nodejs20.x",
///             "python3.11",
///             "python3.12",
///         },
///         CompatibleArchitectures = new[]
///         {
///             "x86_64",
///             "arm64",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFilebase64sha256, err := std.Filebase64sha256(ctx, &std.Filebase64sha256Args{
/// 			Input: "lambda_layer_payload.zip",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// 			Code:           pulumi.NewFileArchive("lambda_layer_payload.zip"),
/// 			LayerName:      pulumi.String("multi_runtime_layer"),
/// 			Description:    pulumi.String("Shared utilities for Lambda functions"),
/// 			LicenseInfo:    pulumi.String("MIT"),
/// 			SourceCodeHash: pulumi.String(invokeFilebase64sha256.Result),
/// 			CompatibleRuntimes: pulumi.StringArray{
/// 				pulumi.String("nodejs18.x"),
/// 				pulumi.String("nodejs20.x"),
/// 				pulumi.String("python3.11"),
/// 				pulumi.String("python3.12"),
/// 			},
/// 			CompatibleArchitectures: pulumi.StringArray{
/// 				pulumi.String("x86_64"),
/// 				pulumi.String("arm64"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new LayerVersion("example", LayerVersionArgs.builder()
///             .code(new FileArchive("lambda_layer_payload.zip"))
///             .layerName("multi_runtime_layer")
///             .description("Shared utilities for Lambda functions")
///             .licenseInfo("MIT")
///             .sourceCodeHash(StdFunctions.filebase64sha256(Filebase64sha256Args.builder()
///                 .input("lambda_layer_payload.zip")
///                 .build()).result())
///             .compatibleRuntimes(
///                 "nodejs18.x",
///                 "nodejs20.x",
///                 "python3.11",
///                 "python3.12")
///             .compatibleArchitectures(
///                 "x86_64",
///                 "arm64")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:LayerVersion
///     properties:
///       code:
///         fn::FileArchive: lambda_layer_payload.zip
///       layerName: multi_runtime_layer
///       description: Shared utilities for Lambda functions
///       licenseInfo: MIT
///       sourceCodeHash:
///         fn::invoke:
///           function: std:filebase64sha256
///           arguments:
///             input: lambda_layer_payload.zip
///           return: result
///       compatibleRuntimes:
///         - nodejs18.x
///         - nodejs20.x
///         - python3.11
///         - python3.12
///       compatibleArchitectures:
///         - x86_64
///         - arm64
/// ```
///
///
/// ## Specifying the Deployment Package
///
/// AWS Lambda Layers expect source code to be provided as a deployment package whose structure varies depending on which `compatible_runtimes` this layer specifies. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) for the valid values of `compatible_runtimes`.
///
/// Once you have created your deployment package you can specify it either directly as a local file (using the `filename` argument) or indirectly via Amazon S3 (using the `s3_bucket`, `s3_key` and `s3_object_version` arguments). When providing the deployment package via S3 it may be useful to use the `aws.s3.BucketObjectv2` resource to upload it.
///
/// For larger deployment packages it is recommended by Amazon to upload via S3, since the S3 API has better support for uploading large files efficiently.
///
/// ## Import
///
/// Using `pulumi import`, import Lambda Layers using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/layerVersion:LayerVersion example arn:aws:lambda:us-west-2:123456789012:layer:example:1
/// ```
class LayerVersion extends pulumi.CustomResource {
  /// ARN of the Lambda Layer with version.
  late final pulumi.Output<String> arn;

  /// Path to the function's deployment package within the local filesystem. If defined, The `s3_`-prefixed options cannot be used.
  late final pulumi.Output<dynamic> code;

  /// Base64-encoded representation of raw SHA-256 sum of the zip file.
  late final pulumi.Output<String> codeSha256;

  /// List of [Architectures](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleArchitectures) this layer is compatible with. Currently `x86_64` and `arm64` can be specified.
  late final pulumi.Output<List<String>?> compatibleArchitectures;

  /// List of [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-CompatibleRuntimes) this layer is compatible with. Up to 15 runtimes can be specified.
  late final pulumi.Output<List<String>?> compatibleRuntimes;

  /// Date this resource was created.
  late final pulumi.Output<String> createdDate;

  /// Description of what your Lambda Layer does.
  late final pulumi.Output<String?> description;

  /// ARN of the Lambda Layer without version.
  late final pulumi.Output<String> layerArn;

  /// Unique name for your Lambda Layer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> layerName;

  /// License info for your Lambda Layer. See [License Info](https://docs.aws.amazon.com/lambda/latest/dg/API_PublishLayerVersion.html#SSS-PublishLayerVersion-request-LicenseInfo).
  late final pulumi.Output<String?> licenseInfo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// S3 bucket location containing the function's deployment package. Conflicts with `filename`. This bucket must reside in the same AWS region where you are creating the Lambda function.
  late final pulumi.Output<String?> s3Bucket;

  /// S3 key of an object containing the function's deployment package. Conflicts with `filename`.
  late final pulumi.Output<String?> s3Key;

  /// Object version containing the function's deployment package. Conflicts with `filename`.
  late final pulumi.Output<String?> s3ObjectVersion;

  /// ARN of a signing job.
  late final pulumi.Output<String> signingJobArn;

  /// ARN for a signing profile version.
  late final pulumi.Output<String> signingProfileVersionArn;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_architectures`, `compatible_runtimes`, `description`, `filename`, `layer_name`, `license_info`, `s3_bucket`, `s3_key`, `s3_object_version`, or `source_code_hash` forces deletion of the existing layer version and creation of a new layer version.
  late final pulumi.Output<bool?> skipDestroy;

  /// Virtual attribute used to trigger replacement when source code changes. Must be set to a base64-encoded SHA256 hash of the package file specified with either `filename` or `s3_key`. The usual way to set this is `filebase64sha256("file.zip")` or `base64sha256(file("file.zip"))`, where "file.zip" is the local filename of the lambda layer source archive.
  late final pulumi.Output<String> sourceCodeHash;

  /// Size in bytes of the function .zip file.
  late final pulumi.Output<int> sourceCodeSize;

  /// Lambda Layer version.
  late final pulumi.Output<String> version;

  /// Creates a new [LayerVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LayerVersion]. {@macro pulumi_lambda_layer_version_layer_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LayerVersion(
    String name, {
    LayerVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/layerVersion:LayerVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.code = registerOutput<dynamic>('code');
    this.codeSha256 = registerOutput<String>('codeSha256');
    this.compatibleArchitectures =
        registerOutput<List<String>?>('compatibleArchitectures');
    this.compatibleRuntimes =
        registerOutput<List<String>?>('compatibleRuntimes');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.layerArn = registerOutput<String>('layerArn');
    this.layerName = registerOutput<String>('layerName');
    this.licenseInfo = registerOutput<String?>('licenseInfo');
    this.region = registerOutput<String>('region');
    this.s3Bucket = registerOutput<String?>('s3Bucket');
    this.s3Key = registerOutput<String?>('s3Key');
    this.s3ObjectVersion = registerOutput<String?>('s3ObjectVersion');
    this.signingJobArn = registerOutput<String>('signingJobArn');
    this.signingProfileVersionArn =
        registerOutput<String>('signingProfileVersionArn');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.sourceCodeHash = registerOutput<String>('sourceCodeHash');
    this.sourceCodeSize = registerOutput<int>('sourceCodeSize');
    this.version = registerOutput<String>('version');
  }
}
