import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_args.dart';
import 'function_capacity_provider_config.dart';
import 'function_dead_letter_config.dart';
import 'function_durable_config.dart';
import 'function_environment.dart';
import 'function_ephemeral_storage.dart';
import 'function_file_system_config.dart';
import 'function_image_config.dart';
import 'function_logging_config.dart';
import 'function_snap_start.dart';
import 'function_state.dart';
import 'function_tenancy_config.dart';
import 'function_tracing_config.dart';
import 'function_vpc_config.dart';

/// Manages an AWS Lambda Function. Use this resource to create serverless functions that run code in response to events without provisioning or managing servers.
///
/// For information about Lambda and how to use it, see [What is AWS Lambda?](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html). For a detailed example of setting up Lambda and API Gateway, see Serverless Applications with AWS Lambda and API Gateway.
///
/// &gt; **Note:** Due to [AWS Lambda improved VPC networking changes that began deploying in September 2019](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/), EC2 subnets and security groups associated with Lambda Functions can take up to 45 minutes to successfully delete. Pulumi AWS Provider version 2.31.0 and later automatically handles this increased timeout, however prior versions require setting the customizable deletion timeouts of those Pulumi resources to 45 minutes (`delete = "45m"`). AWS and HashiCorp are working together to reduce the amount of time required for resource deletion and updates can be tracked in this GitHub issue.
///
/// &gt; **Note:** If you get a `KMSAccessDeniedException: Lambda was unable to decrypt the environment variables because KMS access was denied` error when invoking an `aws.lambda.Function` with environment variables, the IAM role associated with the function may have been deleted and recreated after the function was created. You can fix the problem two ways: 1) updating the function's role to another role and then updating it back again to the recreated role. (When you create a function, Lambda grants permissions on the KMS key to the function's IAM role. If the IAM role is recreated, the grant is no longer valid. Changing the function's role or recreating the function causes Lambda to update the grant.)
///
/// &gt; **Tip:** To give an external source (like an EventBridge Rule, SNS, or S3) permission to access the Lambda function, use the `aws.lambda.Permission` resource. See [Lambda Permission Model](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html) for more details. On the other hand, the `role` argument of this resource is the function's execution role for identity and access to AWS services and resources.
///
/// ## Example Usage
///
/// ### Container Image Function
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Function("example", {
///     imageConfig: {
///         entryPoints: ["/lambda-entrypoint.sh"],
///         commands: ["app.handler"],
///     },
///     name: "example_container_function",
///     role: exampleAwsIamRole.arn,
///     packageType: "Image",
///     imageUri: `${exampleAwsEcrRepository.repositoryUrl}:latest`,
///     memorySize: 512,
///     timeout: 30,
///     architectures: ["arm64"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Function("example",
///     image_config={
///         "entry_points": ["/lambda-entrypoint.sh"],
///         "commands": ["app.handler"],
///     },
///     name="example_container_function",
///     role=example_aws_iam_role["arn"],
///     package_type="Image",
///     image_uri=f"{example_aws_ecr_repository['repositoryUrl']}:latest",
///     memory_size=512,
///     timeout=30,
///     architectures=["arm64"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         ImageConfig = new Aws.Lambda.Inputs.FunctionImageConfigArgs
///         {
///             EntryPoints = new[]
///             {
///                 "/lambda-entrypoint.sh",
///             },
///             Commands = new[]
///             {
///                 "app.handler",
///             },
///         },
///         Name = "example_container_function",
///         Role = exampleAwsIamRole.Arn,
///         PackageType = "Image",
///         ImageUri = $"{exampleAwsEcrRepository.RepositoryUrl}:latest",
///         MemorySize = 512,
///         Timeout = 30,
///         Architectures = new[]
///         {
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
/// 		_, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			ImageConfig: &lambda.FunctionImageConfigArgs{
/// 				EntryPoints: pulumi.StringArray{
/// 					pulumi.String("/lambda-entrypoint.sh"),
/// 				},
/// 				Commands: pulumi.StringArray{
/// 					pulumi.String("app.handler"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example_container_function"),
/// 			Role:        pulumi.Any(exampleAwsIamRole.Arn),
/// 			PackageType: pulumi.String("Image"),
/// 			ImageUri:    pulumi.Sprintf("%v:latest", exampleAwsEcrRepository.RepositoryUrl),
/// 			MemorySize:  pulumi.Int(512),
/// 			Timeout:     pulumi.Int(30),
/// 			Architectures: pulumi.StringArray{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lambda_function" "example" {
///   image_config = {
///     entry_points = ["/lambda-entrypoint.sh"]
///     commands     = ["app.handler"]
///   }
///   name          = "example_container_function"
///   role          = exampleAwsIamRole.arn
///   package_type  = "Image"
///   image_uri     ="${exampleAwsEcrRepository.repositoryUrl}:latest"
///   memory_size   = 512
///   timeout       = 30
///   architectures = ["arm64"] # Graviton support for better price/performance
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionImageConfigArgs;
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
///         var example = new Function("example", FunctionArgs.builder()
///             .imageConfig(FunctionImageConfigArgs.builder()
///                 .entryPoints("/lambda-entrypoint.sh")
///                 .commands("app.handler")
///                 .build())
///             .name("example_container_function")
///             .role(exampleAwsIamRole.arn())
///             .packageType("Image")
///             .imageUri(String.format("%s:latest", exampleAwsEcrRepository.repositoryUrl()))
///             .memorySize(512)
///             .timeout(30)
///             .architectures("arm64")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Function
///     properties:
///       imageConfig:
///         entryPoints:
///           - /lambda-entrypoint.sh
///         commands:
///           - app.handler
///       name: example_container_function
///       role: ${exampleAwsIamRole.arn}
///       packageType: Image
///       imageUri: ${exampleAwsEcrRepository.repositoryUrl}:latest
///       memorySize: 512
///       timeout: 30
///       architectures: # Graviton support for better price/performance
///         - arm64
/// ```
///
///
/// ### Function with Lambda Layers
///
/// &gt; **Note:** The `aws.lambda.LayerVersion` attribute values for `arn` and `layerArn` were swapped in version 2.0.0 of the Pulumi AWS Provider. For version 2.x, use `arn` references.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Common dependencies layer
/// const example = new aws.lambda.LayerVersion("example", {
///     code: new pulumi.asset.FileArchive("layer.zip"),
///     layerName: "example_dependencies_layer",
///     description: "Common dependencies for Lambda functions",
///     compatibleRuntimes: [
///         "nodejs24.x",
///         "python3.12",
///     ],
///     compatibleArchitectures: [
///         "x86_64",
///         "arm64",
///     ],
/// });
/// // Function using the layer
/// const exampleFunction = new aws.lambda.Function("example", {
///     tracingConfig: {
///         mode: "Active",
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_layered_function",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
///     layers: [example.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Common dependencies layer
/// example = aws.lambda_.LayerVersion("example",
///     code=pulumi.FileArchive("layer.zip"),
///     layer_name="example_dependencies_layer",
///     description="Common dependencies for Lambda functions",
///     compatible_runtimes=[
///         "nodejs24.x",
///         "python3.12",
///     ],
///     compatible_architectures=[
///         "x86_64",
///         "arm64",
///     ])
/// # Function using the layer
/// example_function = aws.lambda_.Function("example",
///     tracing_config={
///         "mode": "Active",
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example_layered_function",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X,
///     layers=[example.arn])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Common dependencies layer
///     var example = new Aws.Lambda.LayerVersion("example", new()
///     {
///         Code = new FileArchive("layer.zip"),
///         LayerName = "example_dependencies_layer",
///         Description = "Common dependencies for Lambda functions",
///         CompatibleRuntimes = new[]
///         {
///             "nodejs24.x",
///             "python3.12",
///         },
///         CompatibleArchitectures = new[]
///         {
///             "x86_64",
///             "arm64",
///         },
///     });
///
///     // Function using the layer
///     var exampleFunction = new Aws.Lambda.Function("example", new()
///     {
///         TracingConfig = new Aws.Lambda.Inputs.FunctionTracingConfigArgs
///         {
///             Mode = "Active",
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example_layered_function",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///         Layers = new[]
///         {
///             example.Arn,
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
/// 		// Common dependencies layer
/// 		example, err := lambda.NewLayerVersion(ctx, "example", &lambda.LayerVersionArgs{
/// 			Code:        pulumi.NewFileArchive("layer.zip"),
/// 			LayerName:   pulumi.String("example_dependencies_layer"),
/// 			Description: pulumi.String("Common dependencies for Lambda functions"),
/// 			CompatibleRuntimes: pulumi.StringArray{
/// 				pulumi.String("nodejs24.x"),
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
/// 		// Function using the layer
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			TracingConfig: &lambda.FunctionTracingConfigArgs{
/// 				Mode: pulumi.String("Active"),
/// 			},
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("example_layered_function"),
/// 			Role:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 			Layers: pulumi.StringArray{
/// 				example.Arn,
/// 			},
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
/// # Common dependencies layer
/// resource "aws_lambda_layerversion" "example" {
///   code                     = fileArchive("layer.zip")
///   layer_name               = "example_dependencies_layer"
///   description              = "Common dependencies for Lambda functions"
///   compatible_runtimes      = ["nodejs24.x", "python3.12"]
///   compatible_architectures = ["x86_64", "arm64"]
/// }
/// # Function using the layer
/// resource "aws_lambda_function" "example" {
///   tracing_config = {
///     mode = "Active"
///   }
///   code    = fileArchive("function.zip")
///   name    = "example_layered_function"
///   role    = exampleAwsIamRole.arn
///   handler = "index.handler"
///   runtime = "nodejs24.x"
///   layers  = [aws_lambda_layerversion.example.arn]
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
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionTracingConfigArgs;
/// import com.pulumi.asset.FileArchive;
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
///         // Common dependencies layer
///         var example = new LayerVersion("example", LayerVersionArgs.builder()
///             .code(new FileArchive("layer.zip"))
///             .layerName("example_dependencies_layer")
///             .description("Common dependencies for Lambda functions")
///             .compatibleRuntimes(
///                 "nodejs24.x",
///                 "python3.12")
///             .compatibleArchitectures(
///                 "x86_64",
///                 "arm64")
///             .build());
///
///         // Function using the layer
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .tracingConfig(FunctionTracingConfigArgs.builder()
///                 .mode("Active")
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example_layered_function")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .layers(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Common dependencies layer
///   example:
///     type: aws:lambda:LayerVersion
///     properties:
///       code:
///         fn::fileArchive: layer.zip
///       layerName: example_dependencies_layer
///       description: Common dependencies for Lambda functions
///       compatibleRuntimes:
///         - nodejs24.x
///         - python3.12
///       compatibleArchitectures:
///         - x86_64
///         - arm64
///   # Function using the layer
///   exampleFunction:
///     type: aws:lambda:Function
///     name: example
///     properties:
///       tracingConfig:
///         mode: Active
///       code:
///         fn::fileArchive: function.zip
///       name: example_layered_function
///       role: ${exampleAwsIamRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///       layers:
///         - ${example.arn}
/// ```
///
///
/// ### VPC Function with Enhanced Networking
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Function("example", {
///     vpcConfig: {
///         subnetIds: [
///             examplePrivate1.id,
///             examplePrivate2.id,
///         ],
///         securityGroupIds: [exampleLambda.id],
///         ipv6AllowedForDualStack: true,
///     },
///     ephemeralStorage: {
///         size: 5120,
///     },
///     snapStart: {
///         applyOn: "PublishedVersions",
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_vpc_function",
///     role: exampleAwsIamRole.arn,
///     handler: "app.handler",
///     runtime: aws.lambda.Runtime.Python3d12,
///     memorySize: 1024,
///     timeout: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Function("example",
///     vpc_config={
///         "subnet_ids": [
///             example_private1["id"],
///             example_private2["id"],
///         ],
///         "security_group_ids": [example_lambda["id"]],
///         "ipv6_allowed_for_dual_stack": True,
///     },
///     ephemeral_storage={
///         "size": 5120,
///     },
///     snap_start={
///         "apply_on": "PublishedVersions",
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example_vpc_function",
///     role=example_aws_iam_role["arn"],
///     handler="app.handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D12,
///     memory_size=1024,
///     timeout=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         VpcConfig = new Aws.Lambda.Inputs.FunctionVpcConfigArgs
///         {
///             SubnetIds = new[]
///             {
///                 examplePrivate1.Id,
///                 examplePrivate2.Id,
///             },
///             SecurityGroupIds = new[]
///             {
///                 exampleLambda.Id,
///             },
///             Ipv6AllowedForDualStack = true,
///         },
///         EphemeralStorage = new Aws.Lambda.Inputs.FunctionEphemeralStorageArgs
///         {
///             Size = 5120,
///         },
///         SnapStart = new Aws.Lambda.Inputs.FunctionSnapStartArgs
///         {
///             ApplyOn = "PublishedVersions",
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example_vpc_function",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "app.handler",
///         Runtime = Aws.Lambda.Runtime.Python3d12,
///         MemorySize = 1024,
///         Timeout = 30,
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
/// 		_, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			VpcConfig: &lambda.FunctionVpcConfigArgs{
/// 				SubnetIds: pulumi.StringArray{
/// 					examplePrivate1.Id,
/// 					examplePrivate2.Id,
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					exampleLambda.Id,
/// 				},
/// 				Ipv6AllowedForDualStack: pulumi.Bool(true),
/// 			},
/// 			EphemeralStorage: &lambda.FunctionEphemeralStorageArgs{
/// 				Size: pulumi.Int(5120),
/// 			},
/// 			SnapStart: &lambda.FunctionSnapStartArgs{
/// 				ApplyOn: pulumi.String("PublishedVersions"),
/// 			},
/// 			Code:       pulumi.NewFileArchive("function.zip"),
/// 			Name:       pulumi.String("example_vpc_function"),
/// 			Role:       pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler:    pulumi.String("app.handler"),
/// 			Runtime:    pulumi.String(lambda.RuntimePython3d12),
/// 			MemorySize: pulumi.Int(1024),
/// 			Timeout:    pulumi.Int(30),
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
/// resource "aws_lambda_function" "example" {
///   vpc_config = {
///     subnet_ids                  = [examplePrivate1.id, examplePrivate2.id]
///     security_group_ids          = [exampleLambda.id]
///     ipv6_allowed_for_dual_stack = true
///   }
///   # Enable IPv6 support
///   ephemeral_storage = {
///     size = 5120
///   }
///   snap_start = {
///     apply_on = "PublishedVersions"
///   }
///   code        = fileArchive("function.zip")
///   name        = "example_vpc_function"
///   role        = exampleAwsIamRole.arn
///   handler     = "app.handler"
///   runtime     = "python3.12"
///   memory_size = 1024
///   timeout     = 30
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionVpcConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEphemeralStorageArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionSnapStartArgs;
/// import com.pulumi.asset.FileArchive;
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
///         var example = new Function("example", FunctionArgs.builder()
///             .vpcConfig(FunctionVpcConfigArgs.builder()
///                 .subnetIds(
///                     examplePrivate1.id(),
///                     examplePrivate2.id())
///                 .securityGroupIds(exampleLambda.id())
///                 .ipv6AllowedForDualStack(true)
///                 .build())
///             .ephemeralStorage(FunctionEphemeralStorageArgs.builder()
///                 .size(5120)
///                 .build())
///             .snapStart(FunctionSnapStartArgs.builder()
///                 .applyOn("PublishedVersions")
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example_vpc_function")
///             .role(exampleAwsIamRole.arn())
///             .handler("app.handler")
///             .runtime("python3.12")
///             .memorySize(1024)
///             .timeout(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Function
///     properties:
///       vpcConfig:
///         subnetIds:
///           - ${examplePrivate1.id}
///           - ${examplePrivate2.id}
///         securityGroupIds:
///           - ${exampleLambda.id}
///         ipv6AllowedForDualStack: true
///       ephemeralStorage:
///         size: 5120
///       snapStart:
///         applyOn: PublishedVersions
///       code:
///         fn::fileArchive: function.zip
///       name: example_vpc_function
///       role: ${exampleAwsIamRole.arn}
///       handler: app.handler
///       runtime: python3.12
///       memorySize: 1024
///       timeout: 30
/// ```
///
///
/// ### Function with EFS Integration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // EFS file system for Lambda
/// const example = new aws.efs.FileSystem("example", {
///     encrypted: true,
///     tags: {
///         Name: "lambda-efs",
///     },
/// });
/// const config = new pulumi.Config();
/// // List of subnet IDs for EFS mount targets
/// const subnetIds = config.getObject<Array<string>>("subnetIds") || [
///     "subnet-12345678",
///     "subnet-87654321",
/// ];
/// // Mount target in each subnet
/// const exampleMountTarget: aws.efs.MountTarget[] = [];
/// for (let range = 0; range < subnetIds.length; range++) {
///     exampleMountTarget.push(new aws.efs.MountTarget(`example-${range}`, {
///         fileSystemId: example.id,
///         subnetId: subnetIds[range],
///         securityGroups: [efs.id],
///     }));
/// }
/// // Access point for Lambda
/// const exampleAccessPoint = new aws.efs.AccessPoint("example", {
///     rootDirectory: {
///         creationInfo: {
///             ownerGid: 1000,
///             ownerUid: 1000,
///             permissions: "755",
///         },
///         path: "/lambda",
///     },
///     posixUser: {
///         gid: 1000,
///         uid: 1000,
///     },
///     fileSystemId: example.id,
/// });
/// // Lambda function with EFS
/// const exampleFunction = new aws.lambda.Function("example", {
///     vpcConfig: {
///         subnetIds: subnetIds,
///         securityGroupIds: [lambda.id],
///     },
///     fileSystemConfig: {
///         arn: exampleAccessPoint.arn,
///         localMountPath: "/mnt/data",
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_efs_function",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// }, {
///     dependsOn: [exampleMountTarget],
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// # EFS file system for Lambda
/// example = aws.efs.FileSystem("example",
///     encrypted=True,
///     tags={
///         "Name": "lambda-efs",
///     })
/// config = pulumi.Config()
/// # List of subnet IDs for EFS mount targets
/// subnet_ids = config.get_object("subnetIds")
/// if subnet_ids is None:
///     subnet_ids = [
///         "subnet-12345678",
///         "subnet-87654321",
///     ]
/// # Mount target in each subnet
/// example_mount_target: list[aws.efs.MountTarget] = []
/// for example_mount_target_range in [{"value": i} for i in range(0, len(subnet_ids))]:
///     example_mount_target.append(aws.efs.MountTarget(f"example-{example_mount_target_range['value']}",
///         file_system_id=example.id,
///         subnet_id=subnet_ids[example_mount_target_range["value"]],
///         security_groups=[efs["id"]]))
/// # Access point for Lambda
/// example_access_point = aws.efs.AccessPoint("example",
///     root_directory={
///         "creation_info": {
///             "owner_gid": 1000,
///             "owner_uid": 1000,
///             "permissions": "755",
///         },
///         "path": "/lambda",
///     },
///     posix_user={
///         "gid": 1000,
///         "uid": 1000,
///     },
///     file_system_id=example.id)
/// # Lambda function with EFS
/// example_function = aws.lambda_.Function("example",
///     vpc_config={
///         "subnet_ids": subnet_ids,
///         "security_group_ids": [lambda_["id"]],
///     },
///     file_system_config={
///         "arn": example_access_point.arn,
///         "local_mount_path": "/mnt/data",
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example_efs_function",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X,
///     opts = pulumi.ResourceOptions(depends_on=[example_mount_target]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // EFS file system for Lambda
///     var example = new Aws.Efs.FileSystem("example", new()
///     {
///         Encrypted = true,
///         Tags =
///         {
///             { "Name", "lambda-efs" },
///         },
///     });
///
///     var config = new Config();
///     // List of subnet IDs for EFS mount targets
///     var subnetIds = config.GetObject<string[]>("subnetIds") ?? new[]
///     {
///         "subnet-12345678",
///         "subnet-87654321",
///     };
///     // Mount target in each subnet
///     var exampleMountTarget = new List<Aws.Efs.MountTarget>();
///     for (var rangeIndex = 0; rangeIndex < subnetIds.Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleMountTarget.Add(new Aws.Efs.MountTarget($"example-{range.Value}", new()
///         {
///             FileSystemId = example.Id,
///             SubnetId = subnetIds[range.Value],
///             SecurityGroups = new[]
///             {
///                 efs.Id,
///             },
///         }));
///     }
///     // Access point for Lambda
///     var exampleAccessPoint = new Aws.Efs.AccessPoint("example", new()
///     {
///         RootDirectory = new Aws.Efs.Inputs.AccessPointRootDirectoryArgs
///         {
///             CreationInfo = new Aws.Efs.Inputs.AccessPointRootDirectoryCreationInfoArgs
///             {
///                 OwnerGid = 1000,
///                 OwnerUid = 1000,
///                 Permissions = "755",
///             },
///             Path = "/lambda",
///         },
///         PosixUser = new Aws.Efs.Inputs.AccessPointPosixUserArgs
///         {
///             Gid = 1000,
///             Uid = 1000,
///         },
///         FileSystemId = example.Id,
///     });
///
///     // Lambda function with EFS
///     var exampleFunction = new Aws.Lambda.Function("example", new()
///     {
///         VpcConfig = new Aws.Lambda.Inputs.FunctionVpcConfigArgs
///         {
///             SubnetIds = subnetIds,
///             SecurityGroupIds = new[]
///             {
///                 lambda.Id,
///             },
///         },
///         FileSystemConfig = new Aws.Lambda.Inputs.FunctionFileSystemConfigArgs
///         {
///             Arn = exampleAccessPoint.Arn,
///             LocalMountPath = "/mnt/data",
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example_efs_function",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleMountTarget,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/efs"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// EFS file system for Lambda
/// 		example, err := efs.NewFileSystem(ctx, "example", &efs.FileSystemArgs{
/// 			Encrypted: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("lambda-efs"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		// List of subnet IDs for EFS mount targets
/// 		subnetIds := []string{
/// 			"subnet-12345678",
/// 			"subnet-87654321",
/// 		}
/// 		if param := cfg.GetObject("subnetIds"); param != nil {
/// 			subnetIds = param
/// 		}
/// 		// Mount target in each subnet
/// 		var exampleMountTarget []*efs.MountTarget
/// 		for index := 0; index < len(subnetIds); index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := efs.NewMountTarget(ctx, fmt.Sprintf("example-%v", key0), &efs.MountTargetArgs{
/// 				FileSystemId: example.ID().ToIDOutput().ToStringOutput(),
/// 				SubnetId:     subnetIds[val0],
/// 				SecurityGroups: pulumi.StringArray{
/// 					efs.Id,
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleMountTarget = append(exampleMountTarget, __res)
/// 		}
/// 		// Access point for Lambda
/// 		exampleAccessPoint, err := efs.NewAccessPoint(ctx, "example", &efs.AccessPointArgs{
/// 			RootDirectory: &efs.AccessPointRootDirectoryArgs{
/// 				CreationInfo: &efs.AccessPointRootDirectoryCreationInfoArgs{
/// 					OwnerGid:    pulumi.Int(1000),
/// 					OwnerUid:    pulumi.Int(1000),
/// 					Permissions: pulumi.String("755"),
/// 				},
/// 				Path: pulumi.String("/lambda"),
/// 			},
/// 			PosixUser: &efs.AccessPointPosixUserArgs{
/// 				Gid: pulumi.Int(1000),
/// 				Uid: pulumi.Int(1000),
/// 			},
/// 			FileSystemId: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Lambda function with EFS
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			VpcConfig: &lambda.FunctionVpcConfigArgs{
/// 				SubnetIds: subnetIds,
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					lambda.Id,
/// 				},
/// 			},
/// 			FileSystemConfig: &lambda.FunctionFileSystemConfigArgs{
/// 				Arn:            exampleAccessPoint.Arn,
/// 				LocalMountPath: pulumi.String("/mnt/data"),
/// 			},
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("example_efs_function"),
/// 			Role:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleMountTarget,
/// 		}))
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
/// # EFS file system for Lambda
/// resource "aws_efs_filesystem" "example" {
///   encrypted = true
///   tags = {
///     "Name" = "lambda-efs"
///   }
/// }
/// # Mount target in each subnet
/// resource "aws_efs_mounttarget" "example" {
///   count           = length(var.subnetIds)
///   file_system_id  = aws_efs_filesystem.example.id
///   subnet_id       = var.subnetIds[count.index]
///   security_groups = [efs.id]
/// }
/// # Access point for Lambda
/// resource "aws_efs_accesspoint" "example" {
///   root_directory = {
///     creation_info = {
///       owner_gid   = 1000
///       owner_uid   = 1000
///       permissions = "755"
///     }
///     path = "/lambda"
///   }
///   posix_user = {
///     gid = 1000
///     uid = 1000
///   }
///   file_system_id = aws_efs_filesystem.example.id
/// }
/// # Lambda function with EFS
/// resource "aws_lambda_function" "example" {
///   depends_on = [aws_efs_mounttarget.example]
///   vpc_config = {
///     subnet_ids         = var.subnetIds
///     security_group_ids = [lambda.id]
///   }
///   file_system_config = {
///     arn              = aws_efs_accesspoint.example.arn
///     local_mount_path = "/mnt/data"
///   }
///   code    = fileArchive("function.zip")
///   name    = "example_efs_function"
///   role    = exampleAwsIamRole.arn
///   handler = "index.handler"
///   runtime = "nodejs24.x"
/// }
/// # Example subnet IDs (replace with your actual subnet IDs)
/// variable "subnetIds" {
///   type        = list(optional(string))
///   default     = ["subnet-12345678", "subnet-87654321"]
///   description = "List of subnet IDs for EFS mount targets"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.efs.FileSystem;
/// import com.pulumi.aws.efs.FileSystemArgs;
/// import com.pulumi.aws.efs.MountTarget;
/// import com.pulumi.aws.efs.MountTargetArgs;
/// import com.pulumi.aws.efs.AccessPoint;
/// import com.pulumi.aws.efs.AccessPointArgs;
/// import com.pulumi.aws.efs.inputs.AccessPointRootDirectoryArgs;
/// import com.pulumi.aws.efs.inputs.AccessPointRootDirectoryCreationInfoArgs;
/// import com.pulumi.aws.efs.inputs.AccessPointPosixUserArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionVpcConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionFileSystemConfigArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var config = ctx.config();
///         // EFS file system for Lambda
///         var example = new FileSystem("example", FileSystemArgs.builder()
///             .encrypted(true)
///             .tags(Map.of("Name", "lambda-efs"))
///             .build());
///
///         final var subnetIds = config.get("subnetIds").orElse(
///             "subnet-12345678",
///             "subnet-87654321");
///         // Mount target in each subnet
///         for (var i = 0; i < subnetIds.size(); i++) {
///             new MountTarget("exampleMountTarget-" + i, MountTargetArgs.builder()
///                 .fileSystemId(example.id())
///                 .subnetId(subnetIds[range.value()])
///                 .securityGroups(efs.id())
///                 .build());
///
///
/// }
///         // Access point for Lambda
///         var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
///             .rootDirectory(AccessPointRootDirectoryArgs.builder()
///                 .creationInfo(AccessPointRootDirectoryCreationInfoArgs.builder()
///                     .ownerGid(1000)
///                     .ownerUid(1000)
///                     .permissions("755")
///                     .build())
///                 .path("/lambda")
///                 .build())
///             .posixUser(AccessPointPosixUserArgs.builder()
///                 .gid(1000)
///                 .uid(1000)
///                 .build())
///             .fileSystemId(example.id())
///             .build());
///
///         // Lambda function with EFS
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .vpcConfig(FunctionVpcConfigArgs.builder()
///                 .subnetIds(subnetIds)
///                 .securityGroupIds(lambda.id())
///                 .build())
///             .fileSystemConfig(FunctionFileSystemConfigArgs.builder()
///                 .arn(exampleAccessPoint.arn())
///                 .localMountPath("/mnt/data")
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example_efs_function")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleMountTarget)
///                 .build());
///
///     }
/// }
/// ```
///
///
/// ### Function with S3 Files File System
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetRegion = aws.getRegion({});
/// const lambdaFileSystem = new aws.s3.Bucket("lambda_file_system", {
///     bucket: Promise.all([current, currentGetRegion]).then(([current, currentGetRegion]) => `example-${current.accountId}-${currentGetRegion.name}-an`),
///     bucketNamespace: "account-regional",
/// });
/// const lambdaFileSystemBucketVersioning = new aws.s3.BucketVersioning("lambda_file_system", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: lambdaFileSystem.bucket,
/// });
/// const forLambda = new aws.s3.FilesFileSystem("for_lambda", {
///     bucket: lambdaFileSystem.arn,
///     roleArn: s3files.arn,
/// }, {
///     dependsOn: [lambdaFileSystemBucketVersioning],
/// });
/// const forLambdaFilesAccessPoint = new aws.s3.FilesAccessPoint("for_lambda", {
///     posixUsers: [{
///         gid: 1000,
///         uid: 1000,
///     }],
///     rootDirectories: [{
///         creationPermissions: [{
///             ownerGid: 1000,
///             ownerUid: 1000,
///             permissions: "755",
///         }],
///         path: "/lambda",
///     }],
///     fileSystemId: forLambda.id,
/// });
/// const s3filesMountTargets = new aws.ec2.SecurityGroup("s3files_mount_targets", {
///     name: "example-s3files-mount-targets-sg",
///     vpcId: vpcForLambda.id,
/// });
/// const lambdaS3files = new aws.ec2.SecurityGroup("lambda_s3files", {
///     name: "example-lambda-s3files-sg",
///     vpcId: vpcForLambda.id,
/// });
/// const s3filesMountTargetsNfs = new aws.vpc.SecurityGroupIngressRule("s3files_mount_targets_nfs", {
///     ipProtocol: "tcp",
///     fromPort: 2049,
///     toPort: 2049,
///     referencedSecurityGroupId: lambdaS3files.id,
///     securityGroupId: s3filesMountTargets.id,
/// });
/// const lambdaS3filesNfs = new aws.vpc.SecurityGroupEgressRule("lambda_s3files_nfs", {
///     ipProtocol: "tcp",
///     securityGroupId: lambdaS3files.id,
///     fromPort: 2049,
///     toPort: 2049,
///     referencedSecurityGroupId: s3filesMountTargets.id,
/// });
/// const example = new aws.lambda.Function("example", {
///     vpcConfig: {
///         subnetIds: [subnetForLambdaAz1.id],
///         securityGroupIds: [lambdaS3files.id],
///     },
///     fileSystemConfig: {
///         arn: forLambdaFilesAccessPoint.arn,
///         localMountPath: "/mnt/s3files",
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_s3files_function",
///     role: iamForLambda.arn,
///     handler: "exports.example",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// }, {
///     dependsOn: [forLambdaAwsS3filesMountTarget],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// lambda_file_system = aws.s3.Bucket("lambda_file_system",
///     bucket=f"example-{current.account_id}-{current_get_region.name}-an",
///     bucket_namespace="account-regional")
/// lambda_file_system_bucket_versioning = aws.s3.BucketVersioning("lambda_file_system",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=lambda_file_system.bucket)
/// for_lambda = aws.s3.FilesFileSystem("for_lambda",
///     bucket=lambda_file_system.arn,
///     role_arn=s3files["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[lambda_file_system_bucket_versioning]))
/// for_lambda_files_access_point = aws.s3.FilesAccessPoint("for_lambda",
///     posix_users=[{
///         "gid": 1000,
///         "uid": 1000,
///     }],
///     root_directories=[{
///         "creation_permissions": [{
///             "owner_gid": 1000,
///             "owner_uid": 1000,
///             "permissions": "755",
///         }],
///         "path": "/lambda",
///     }],
///     file_system_id=for_lambda.id)
/// s3files_mount_targets = aws.ec2.SecurityGroup("s3files_mount_targets",
///     name="example-s3files-mount-targets-sg",
///     vpc_id=vpc_for_lambda["id"])
/// lambda_s3files = aws.ec2.SecurityGroup("lambda_s3files",
///     name="example-lambda-s3files-sg",
///     vpc_id=vpc_for_lambda["id"])
/// s3files_mount_targets_nfs = aws.vpc.SecurityGroupIngressRule("s3files_mount_targets_nfs",
///     ip_protocol="tcp",
///     from_port=2049,
///     to_port=2049,
///     referenced_security_group_id=lambda_s3files.id,
///     security_group_id=s3files_mount_targets.id)
/// lambda_s3files_nfs = aws.vpc.SecurityGroupEgressRule("lambda_s3files_nfs",
///     ip_protocol="tcp",
///     security_group_id=lambda_s3files.id,
///     from_port=2049,
///     to_port=2049,
///     referenced_security_group_id=s3files_mount_targets.id)
/// example = aws.lambda_.Function("example",
///     vpc_config={
///         "subnet_ids": [subnet_for_lambda_az1["id"]],
///         "security_group_ids": [lambda_s3files.id],
///     },
///     file_system_config={
///         "arn": for_lambda_files_access_point.arn,
///         "local_mount_path": "/mnt/s3files",
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example_s3files_function",
///     role=iam_for_lambda["arn"],
///     handler="exports.example",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X,
///     opts = pulumi.ResourceOptions(depends_on=[for_lambda_aws_s3files_mount_target]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var lambdaFileSystem = new Aws.S3.Bucket("lambda_file_system", new()
///     {
///         BucketName = Output.Tuple(current, currentGetRegion).Apply(values =>
///         {
///             var current = values.Item1;
///             var currentGetRegion = values.Item2;
///             return $"example-{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}-{currentGetRegion.Apply(getRegionResult => getRegionResult.Name)}-an";
///         }),
///         BucketNamespace = "account-regional",
///     });
///
///     var lambdaFileSystemBucketVersioning = new Aws.S3.BucketVersioning("lambda_file_system", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = lambdaFileSystem.BucketName,
///     });
///
///     var forLambda = new Aws.S3.FilesFileSystem("for_lambda", new()
///     {
///         Bucket = lambdaFileSystem.Arn,
///         RoleArn = s3files.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             lambdaFileSystemBucketVersioning,
///         },
///     });
///
///     var forLambdaFilesAccessPoint = new Aws.S3.FilesAccessPoint("for_lambda", new()
///     {
///         PosixUsers = new[]
///         {
///             new Aws.S3.Inputs.FilesAccessPointPosixUserArgs
///             {
///                 Gid = 1000,
///                 Uid = 1000,
///             },
///         },
///         RootDirectories = new[]
///         {
///             new Aws.S3.Inputs.FilesAccessPointRootDirectoryArgs
///             {
///                 CreationPermissions = new[]
///                 {
///                     new Aws.S3.Inputs.FilesAccessPointRootDirectoryCreationPermissionArgs
///                     {
///                         OwnerGid = 1000,
///                         OwnerUid = 1000,
///                         Permissions = "755",
///                     },
///                 },
///                 Path = "/lambda",
///             },
///         },
///         FileSystemId = forLambda.Id,
///     });
///
///     var s3filesMountTargets = new Aws.Ec2.SecurityGroup("s3files_mount_targets", new()
///     {
///         Name = "example-s3files-mount-targets-sg",
///         VpcId = vpcForLambda.Id,
///     });
///
///     var lambdaS3files = new Aws.Ec2.SecurityGroup("lambda_s3files", new()
///     {
///         Name = "example-lambda-s3files-sg",
///         VpcId = vpcForLambda.Id,
///     });
///
///     var s3filesMountTargetsNfs = new Aws.Vpc.SecurityGroupIngressRule("s3files_mount_targets_nfs", new()
///     {
///         IpProtocol = "tcp",
///         FromPort = 2049,
///         ToPort = 2049,
///         ReferencedSecurityGroupId = lambdaS3files.Id,
///         SecurityGroupId = s3filesMountTargets.Id,
///     });
///
///     var lambdaS3filesNfs = new Aws.Vpc.SecurityGroupEgressRule("lambda_s3files_nfs", new()
///     {
///         IpProtocol = "tcp",
///         SecurityGroupId = lambdaS3files.Id,
///         FromPort = 2049,
///         ToPort = 2049,
///         ReferencedSecurityGroupId = s3filesMountTargets.Id,
///     });
///
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         VpcConfig = new Aws.Lambda.Inputs.FunctionVpcConfigArgs
///         {
///             SubnetIds = new[]
///             {
///                 subnetForLambdaAz1.Id,
///             },
///             SecurityGroupIds = new[]
///             {
///                 lambdaS3files.Id,
///             },
///         },
///         FileSystemConfig = new Aws.Lambda.Inputs.FunctionFileSystemConfigArgs
///         {
///             Arn = forLambdaFilesAccessPoint.Arn,
///             LocalMountPath = "/mnt/s3files",
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example_s3files_function",
///         Role = iamForLambda.Arn,
///         Handler = "exports.example",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             forLambdaAwsS3filesMountTarget,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaFileSystem, err := s3.NewBucket(ctx, "lambda_file_system", &s3.BucketArgs{
/// 			Bucket:          pulumi.Sprintf("example-%v-%v-an", current.AccountId, currentGetRegion.Name),
/// 			BucketNamespace: pulumi.String("account-regional"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaFileSystemBucketVersioning, err := s3.NewBucketVersioning(ctx, "lambda_file_system", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: lambdaFileSystem.Bucket,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forLambda, err := s3.NewFilesFileSystem(ctx, "for_lambda", &s3.FilesFileSystemArgs{
/// 			Bucket:  lambdaFileSystem.Arn,
/// 			RoleArn: pulumi.Any(s3files.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			lambdaFileSystemBucketVersioning,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		forLambdaFilesAccessPoint, err := s3.NewFilesAccessPoint(ctx, "for_lambda", &s3.FilesAccessPointArgs{
/// 			PosixUsers: s3.FilesAccessPointPosixUserArray{
/// 				&s3.FilesAccessPointPosixUserArgs{
/// 					Gid: pulumi.Int(1000),
/// 					Uid: pulumi.Int(1000),
/// 				},
/// 			},
/// 			RootDirectories: s3.FilesAccessPointRootDirectoryArray{
/// 				&s3.FilesAccessPointRootDirectoryArgs{
/// 					CreationPermissions: s3.FilesAccessPointRootDirectoryCreationPermissionArray{
/// 						&s3.FilesAccessPointRootDirectoryCreationPermissionArgs{
/// 							OwnerGid:    pulumi.Int(1000),
/// 							OwnerUid:    pulumi.Int(1000),
/// 							Permissions: pulumi.String("755"),
/// 						},
/// 					},
/// 					Path: pulumi.String("/lambda"),
/// 				},
/// 			},
/// 			FileSystemId: forLambda.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3filesMountTargets, err := ec2.NewSecurityGroup(ctx, "s3files_mount_targets", &ec2.SecurityGroupArgs{
/// 			Name:  pulumi.String("example-s3files-mount-targets-sg"),
/// 			VpcId: pulumi.Any(vpcForLambda.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaS3files, err := ec2.NewSecurityGroup(ctx, "lambda_s3files", &ec2.SecurityGroupArgs{
/// 			Name:  pulumi.String("example-lambda-s3files-sg"),
/// 			VpcId: pulumi.Any(vpcForLambda.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSecurityGroupIngressRule(ctx, "s3files_mount_targets_nfs", &vpc.SecurityGroupIngressRuleArgs{
/// 			IpProtocol:                pulumi.String("tcp"),
/// 			FromPort:                  pulumi.Int(2049),
/// 			ToPort:                    pulumi.Int(2049),
/// 			ReferencedSecurityGroupId: lambdaS3files.ID().ToIDOutput().ToStringOutput(),
/// 			SecurityGroupId:           s3filesMountTargets.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSecurityGroupEgressRule(ctx, "lambda_s3files_nfs", &vpc.SecurityGroupEgressRuleArgs{
/// 			IpProtocol:                pulumi.String("tcp"),
/// 			SecurityGroupId:           lambdaS3files.ID().ToIDOutput().ToStringOutput(),
/// 			FromPort:                  pulumi.Int(2049),
/// 			ToPort:                    pulumi.Int(2049),
/// 			ReferencedSecurityGroupId: s3filesMountTargets.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			VpcConfig: &lambda.FunctionVpcConfigArgs{
/// 				SubnetIds: pulumi.StringArray{
/// 					subnetForLambdaAz1.Id,
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					lambdaS3files.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			FileSystemConfig: &lambda.FunctionFileSystemConfigArgs{
/// 				Arn:            forLambdaFilesAccessPoint.Arn,
/// 				LocalMountPath: pulumi.String("/mnt/s3files"),
/// 			},
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("example_s3files_function"),
/// 			Role:    pulumi.Any(iamForLambda.Arn),
/// 			Handler: pulumi.String("exports.example"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			forLambdaAwsS3filesMountTarget,
/// 		}))
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getregion" "currentGetRegion" {
/// }
///
/// resource "aws_s3_bucket" "lambda_file_system" {
///   bucket           ="example-${data.aws_getcalleridentity.current.account_id}-${data.aws_getregion.currentGetRegion.name}-an"
///   bucket_namespace = "account-regional"
/// }
/// resource "aws_s3_bucketversioning" "lambda_file_system" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.lambda_file_system.bucket
/// }
/// resource "aws_s3_filesfilesystem" "for_lambda" {
///   depends_on = [aws_s3_bucketversioning.lambda_file_system]
///   bucket     = aws_s3_bucket.lambda_file_system.arn
///   role_arn   = s3files.arn
/// }
/// resource "aws_s3_filesaccesspoint" "for_lambda" {
///   posix_users {
///     gid = 1000
///     uid = 1000
///   }
///   root_directories {
///     creation_permissions {
///       owner_gid   = 1000
///       owner_uid   = 1000
///       permissions = "755"
///     }
///     path = "/lambda"
///   }
///   file_system_id = aws_s3_filesfilesystem.for_lambda.id
/// }
/// resource "aws_ec2_securitygroup" "s3files_mount_targets" {
///   name   = "example-s3files-mount-targets-sg"
///   vpc_id = vpcForLambda.id
/// }
/// resource "aws_vpc_securitygroupingressrule" "s3files_mount_targets_nfs" {
///   ip_protocol                  = "tcp"
///   from_port                    = 2049
///   to_port                      = 2049
///   referenced_security_group_id = aws_ec2_securitygroup.lambda_s3files.id
///   security_group_id            = aws_ec2_securitygroup.s3files_mount_targets.id
/// }
/// resource "aws_ec2_securitygroup" "lambda_s3files" {
///   name   = "example-lambda-s3files-sg"
///   vpc_id = vpcForLambda.id
/// }
/// resource "aws_vpc_securitygroupegressrule" "lambda_s3files_nfs" {
///   ip_protocol                  = "tcp"
///   security_group_id            = aws_ec2_securitygroup.lambda_s3files.id
///   from_port                    = 2049
///   to_port                      = 2049
///   referenced_security_group_id = aws_ec2_securitygroup.s3files_mount_targets.id
/// }
/// resource "aws_lambda_function" "example" {
///   depends_on = [forLambdaAwsS3filesMountTarget]
///   vpc_config = {
///     subnet_ids         = [subnetForLambdaAz1.id]
///     security_group_ids = [aws_ec2_securitygroup.lambda_s3files.id]
///   }
///   file_system_config = {
///     arn              = aws_s3_filesaccesspoint.for_lambda.arn
///     local_mount_path = "/mnt/s3files"
///   }
///   code    = fileArchive("function.zip")
///   name    = "example_s3files_function"
///   role    = iamForLambda.arn
///   handler = "exports.example"
///   runtime = "nodejs24.x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.FilesFileSystem;
/// import com.pulumi.aws.s3.FilesFileSystemArgs;
/// import com.pulumi.aws.s3.FilesAccessPoint;
/// import com.pulumi.aws.s3.FilesAccessPointArgs;
/// import com.pulumi.aws.s3.inputs.FilesAccessPointPosixUserArgs;
/// import com.pulumi.aws.s3.inputs.FilesAccessPointRootDirectoryArgs;
/// import com.pulumi.aws.s3.inputs.FilesAccessPointRootDirectoryCreationPermissionArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRule;
/// import com.pulumi.aws.vpc.SecurityGroupIngressRuleArgs;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRule;
/// import com.pulumi.aws.vpc.SecurityGroupEgressRuleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionVpcConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionFileSystemConfigArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var lambdaFileSystem = new Bucket("lambdaFileSystem", BucketArgs.builder()
///             .bucket(String.format("example-%s-%s-an", current.accountId(),currentGetRegion.name()))
///             .bucketNamespace("account-regional")
///             .build());
///
///         var lambdaFileSystemBucketVersioning = new BucketVersioning("lambdaFileSystemBucketVersioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(lambdaFileSystem.bucket())
///             .build());
///
///         var forLambda = new FilesFileSystem("forLambda", FilesFileSystemArgs.builder()
///             .bucket(lambdaFileSystem.arn())
///             .roleArn(s3files.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(lambdaFileSystemBucketVersioning)
///                 .build());
///
///         var forLambdaFilesAccessPoint = new FilesAccessPoint("forLambdaFilesAccessPoint", FilesAccessPointArgs.builder()
///             .posixUsers(FilesAccessPointPosixUserArgs.builder()
///                 .gid(1000)
///                 .uid(1000)
///                 .build())
///             .rootDirectories(FilesAccessPointRootDirectoryArgs.builder()
///                 .creationPermissions(FilesAccessPointRootDirectoryCreationPermissionArgs.builder()
///                     .ownerGid(1000)
///                     .ownerUid(1000)
///                     .permissions("755")
///                     .build())
///                 .path("/lambda")
///                 .build())
///             .fileSystemId(forLambda.id())
///             .build());
///
///         var s3filesMountTargets = new SecurityGroup("s3filesMountTargets", SecurityGroupArgs.builder()
///             .name("example-s3files-mount-targets-sg")
///             .vpcId(vpcForLambda.id())
///             .build());
///
///         var lambdaS3files = new SecurityGroup("lambdaS3files", SecurityGroupArgs.builder()
///             .name("example-lambda-s3files-sg")
///             .vpcId(vpcForLambda.id())
///             .build());
///
///         var s3filesMountTargetsNfs = new SecurityGroupIngressRule("s3filesMountTargetsNfs", SecurityGroupIngressRuleArgs.builder()
///             .ipProtocol("tcp")
///             .fromPort(2049)
///             .toPort(2049)
///             .referencedSecurityGroupId(lambdaS3files.id())
///             .securityGroupId(s3filesMountTargets.id())
///             .build());
///
///         var lambdaS3filesNfs = new SecurityGroupEgressRule("lambdaS3filesNfs", SecurityGroupEgressRuleArgs.builder()
///             .ipProtocol("tcp")
///             .securityGroupId(lambdaS3files.id())
///             .fromPort(2049)
///             .toPort(2049)
///             .referencedSecurityGroupId(s3filesMountTargets.id())
///             .build());
///
///         var example = new Function("example", FunctionArgs.builder()
///             .vpcConfig(FunctionVpcConfigArgs.builder()
///                 .subnetIds(subnetForLambdaAz1.id())
///                 .securityGroupIds(lambdaS3files.id())
///                 .build())
///             .fileSystemConfig(FunctionFileSystemConfigArgs.builder()
///                 .arn(forLambdaFilesAccessPoint.arn())
///                 .localMountPath("/mnt/s3files")
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example_s3files_function")
///             .role(iamForLambda.arn())
///             .handler("exports.example")
///             .runtime("nodejs24.x")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(forLambdaAwsS3filesMountTarget)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lambdaFileSystem:
///     type: aws:s3:Bucket
///     name: lambda_file_system
///     properties:
///       bucket: example-${current.accountId}-${currentGetRegion.name}-an
///       bucketNamespace: account-regional
///   lambdaFileSystemBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: lambda_file_system
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${lambdaFileSystem.bucket}
///   forLambda:
///     type: aws:s3:FilesFileSystem
///     name: for_lambda
///     properties:
///       bucket: ${lambdaFileSystem.arn}
///       roleArn: ${s3files.arn}
///     options:
///       dependsOn:
///         - ${lambdaFileSystemBucketVersioning}
///   forLambdaFilesAccessPoint:
///     type: aws:s3:FilesAccessPoint
///     name: for_lambda
///     properties:
///       posixUsers:
///         - gid: 1000
///           uid: 1000
///       rootDirectories:
///         - creationPermissions:
///             - ownerGid: 1000
///               ownerUid: 1000
///               permissions: '755'
///           path: /lambda
///       fileSystemId: ${forLambda.id}
///   s3filesMountTargets:
///     type: aws:ec2:SecurityGroup
///     name: s3files_mount_targets
///     properties:
///       name: example-s3files-mount-targets-sg
///       vpcId: ${vpcForLambda.id}
///   s3filesMountTargetsNfs:
///     type: aws:vpc:SecurityGroupIngressRule
///     name: s3files_mount_targets_nfs
///     properties:
///       ipProtocol: tcp
///       fromPort: 2049
///       toPort: 2049
///       referencedSecurityGroupId: ${lambdaS3files.id}
///       securityGroupId: ${s3filesMountTargets.id}
///   lambdaS3files:
///     type: aws:ec2:SecurityGroup
///     name: lambda_s3files
///     properties:
///       name: example-lambda-s3files-sg
///       vpcId: ${vpcForLambda.id}
///   lambdaS3filesNfs:
///     type: aws:vpc:SecurityGroupEgressRule
///     name: lambda_s3files_nfs
///     properties:
///       ipProtocol: tcp
///       securityGroupId: ${lambdaS3files.id}
///       fromPort: 2049
///       toPort: 2049
///       referencedSecurityGroupId: ${s3filesMountTargets.id}
///   example:
///     type: aws:lambda:Function
///     properties:
///       vpcConfig:
///         subnetIds:
///           - ${subnetForLambdaAz1.id}
///         securityGroupIds:
///           - ${lambdaS3files.id}
///       fileSystemConfig:
///         arn: ${forLambdaFilesAccessPoint.arn}
///         localMountPath: /mnt/s3files
///       code:
///         fn::fileArchive: function.zip
///       name: example_s3files_function
///       role: ${iamForLambda.arn}
///       handler: exports.example
///       runtime: nodejs24.x
///     options:
///       dependsOn:
///         - ${forLambdaAwsS3filesMountTarget}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ### Function with Advanced Logging
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {
///     name: "/aws/lambda/example_function",
///     retentionInDays: 14,
///     tags: {
///         Environment: "production",
///         Application: "example",
///     },
/// });
/// const exampleFunction = new aws.lambda.Function("example", {
///     loggingConfig: {
///         logFormat: "JSON",
///         applicationLogLevel: "INFO",
///         systemLogLevel: "WARN",
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_function",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example",
///     name="/aws/lambda/example_function",
///     retention_in_days=14,
///     tags={
///         "Environment": "production",
///         "Application": "example",
///     })
/// example_function = aws.lambda_.Function("example",
///     logging_config={
///         "log_format": "JSON",
///         "application_log_level": "INFO",
///         "system_log_level": "WARN",
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example_function",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X,
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "/aws/lambda/example_function",
///         RetentionInDays = 14,
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Application", "example" },
///         },
///     });
///
///     var exampleFunction = new Aws.Lambda.Function("example", new()
///     {
///         LoggingConfig = new Aws.Lambda.Inputs.FunctionLoggingConfigArgs
///         {
///             LogFormat = "JSON",
///             ApplicationLogLevel = "INFO",
///             SystemLogLevel = "WARN",
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example_function",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name:            pulumi.String("/aws/lambda/example_function"),
/// 			RetentionInDays: pulumi.Int(14),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Application": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			LoggingConfig: &lambda.FunctionLoggingConfigArgs{
/// 				LogFormat:           pulumi.String("JSON"),
/// 				ApplicationLogLevel: pulumi.String("INFO"),
/// 				SystemLogLevel:      pulumi.String("WARN"),
/// 			},
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("example_function"),
/// 			Role:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_cloudwatch_loggroup" "example" {
///   name              = "/aws/lambda/example_function"
///   retention_in_days = 14
///   tags = {
///     "Environment" = "production"
///     "Application" = "example"
///   }
/// }
/// resource "aws_lambda_function" "example" {
///   depends_on = [aws_cloudwatch_loggroup.example]
///   logging_config = {
///     log_format            = "JSON"
///     application_log_level = "INFO"
///     system_log_level      = "WARN"
///   }
///   code    = fileArchive("function.zip")
///   name    = "example_function"
///   role    = exampleAwsIamRole.arn
///   handler = "index.handler"
///   runtime = "nodejs24.x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionLoggingConfigArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("/aws/lambda/example_function")
///             .retentionInDays(14)
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Application", "example")
///             ))
///             .build());
///
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .loggingConfig(FunctionLoggingConfigArgs.builder()
///                 .logFormat("JSON")
///                 .applicationLogLevel("INFO")
///                 .systemLogLevel("WARN")
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example_function")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: /aws/lambda/example_function
///       retentionInDays: 14
///       tags:
///         Environment: production
///         Application: example
///   exampleFunction:
///     type: aws:lambda:Function
///     name: example
///     properties:
///       loggingConfig:
///         logFormat: JSON
///         applicationLogLevel: INFO
///         systemLogLevel: WARN
///       code:
///         fn::fileArchive: function.zip
///       name: example_function
///       role: ${exampleAwsIamRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ### Function with logging to S3 or Data Firehose
///
/// #### Required Resources
///
/// * An S3 bucket or Data Firehose delivery stream to store the logs.
/// * A CloudWatch Log Group with:
///
/// * `logGroupClass = "DELIVERY"`
/// * A subscription filter whose `destinationArn` points to the S3 bucket or the Data Firehose delivery stream.
///
/// * IAM roles:
///
/// * Assumed by the `logs.amazonaws.com` service to deliver logs to the S3 bucket or Data Firehose delivery stream.
/// * Assumed by the `lambda.amazonaws.com` service to send logs to CloudWatch Logs
///
/// * A Lambda function:
///
/// * In the `loggingConfiguration`, specify the name of the Log Group created above using the `logGroup` field
/// * No special configuration is required to use S3 or Firehose as the log destination
///
/// For more details, see [Sending Lambda function logs to Amazon S3](https://docs.aws.amazon.com/lambda/latest/dg/logging-with-s3.html).
///
/// ### Example: Exporting Lambda Logs to S3 Bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lambdaFunctionName = "lambda-log-export-example";
/// const lambdaLogExportBucket = new aws.s3.Bucket("lambda_log_export", {bucket: `${lambdaFunctionName}-bucket`});
/// const _export = new aws.cloudwatch.LogGroup("export", {
///     name: `/aws/lambda/${lambdaFunctionName}`,
///     logGroupClass: "DELIVERY",
/// });
/// const logsAssumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["logs.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///         effect: "Allow",
///     }],
/// });
/// const logsLogExport = new aws.iam.Role("logs_log_export", {
///     name: `${lambdaFunctionName}-lambda-log-export-role`,
///     assumeRolePolicy: logsAssumeRole.then(logsAssumeRole => logsAssumeRole.json),
/// });
/// const lambdaLogExport = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         actions: ["s3:PutObject"],
///         effect: "Allow",
///         resources: [pulumi.interpolate`${lambdaLogExportBucket.arn}/*`],
///     }],
/// });
/// const lambdaLogExportRolePolicy = new aws.iam.RolePolicy("lambda_log_export", {
///     policy: lambdaLogExport.json,
///     role: logsLogExport.name,
/// });
/// const lambdaLogExportLogSubscriptionFilter = new aws.cloudwatch.LogSubscriptionFilter("lambda_log_export", {
///     name: `${lambdaFunctionName}-filter`,
///     logGroup: _export.name,
///     filterPattern: "",
///     destinationArn: lambdaLogExportBucket.arn,
///     roleArn: logsLogExport.arn,
/// });
/// const logExport = new aws.lambda.Function("log_export", {
///     loggingConfig: {
///         logFormat: "Text",
///         logGroup: _export.name,
///     },
///     name: lambdaFunctionName,
///     handler: "index.lambda_handler",
///     runtime: aws.lambda.Runtime.Python3d13,
///     role: example.arn,
///     code: new pulumi.asset.FileArchive("function.zip"),
/// }, {
///     dependsOn: [_export],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lambda_function_name = "lambda-log-export-example"
/// lambda_log_export_bucket = aws.s3.Bucket("lambda_log_export", bucket=f"{lambda_function_name}-bucket")
/// export = aws.cloudwatch.LogGroup("export",
///     name=f"/aws/lambda/{lambda_function_name}",
///     log_group_class="DELIVERY")
/// logs_assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["logs.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
///     "effect": "Allow",
/// }])
/// logs_log_export = aws.iam.Role("logs_log_export",
///     name=f"{lambda_function_name}-lambda-log-export-role",
///     assume_role_policy=logs_assume_role.json)
/// lambda_log_export = aws.iam.get_policy_document_output(statements=[{
///     "actions": ["s3:PutObject"],
///     "effect": "Allow",
///     "resources": [lambda_log_export_bucket.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// lambda_log_export_role_policy = aws.iam.RolePolicy("lambda_log_export",
///     policy=lambda_log_export.json,
///     role=logs_log_export.name)
/// lambda_log_export_log_subscription_filter = aws.cloudwatch.LogSubscriptionFilter("lambda_log_export",
///     name=f"{lambda_function_name}-filter",
///     log_group=export.name,
///     filter_pattern="",
///     destination_arn=lambda_log_export_bucket.arn,
///     role_arn=logs_log_export.arn)
/// log_export = aws.lambda_.Function("log_export",
///     logging_config={
///         "log_format": "Text",
///         "log_group": export.name,
///     },
///     name=lambda_function_name,
///     handler="index.lambda_handler",
///     runtime=aws.lambda_.Runtime.PYTHON3D13,
///     role=example["arn"],
///     code=pulumi.FileArchive("function.zip"),
///     opts = pulumi.ResourceOptions(depends_on=[export]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lambdaFunctionName = "lambda-log-export-example";
///
///     var lambdaLogExportBucket = new Aws.S3.Bucket("lambda_log_export", new()
///     {
///         BucketName = $"{lambdaFunctionName}-bucket",
///     });
///
///     var export = new Aws.CloudWatch.LogGroup("export", new()
///     {
///         Name = $"/aws/lambda/{lambdaFunctionName}",
///         LogGroupClass = "DELIVERY",
///     });
///
///     var logsAssumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "logs.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Effect = "Allow",
///             },
///         },
///     });
///
///     var logsLogExport = new Aws.Iam.Role("logs_log_export", new()
///     {
///         Name = $"{lambdaFunctionName}-lambda-log-export-role",
///         AssumeRolePolicy = logsAssumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var lambdaLogExport = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     $"{lambdaLogExportBucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var lambdaLogExportRolePolicy = new Aws.Iam.RolePolicy("lambda_log_export", new()
///     {
///         Policy = lambdaLogExport.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         Role = logsLogExport.Name,
///     });
///
///     var lambdaLogExportLogSubscriptionFilter = new Aws.CloudWatch.LogSubscriptionFilter("lambda_log_export", new()
///     {
///         Name = $"{lambdaFunctionName}-filter",
///         LogGroup = export.Name,
///         FilterPattern = "",
///         DestinationArn = lambdaLogExportBucket.Arn,
///         RoleArn = logsLogExport.Arn,
///     });
///
///     var logExport = new Aws.Lambda.Function("log_export", new()
///     {
///         LoggingConfig = new Aws.Lambda.Inputs.FunctionLoggingConfigArgs
///         {
///             LogFormat = "Text",
///             LogGroup = export.Name,
///         },
///         Name = lambdaFunctionName,
///         Handler = "index.lambda_handler",
///         Runtime = Aws.Lambda.Runtime.Python3d13,
///         Role = example.Arn,
///         Code = new FileArchive("function.zip"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             export,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		lambdaFunctionName := "lambda-log-export-example"
/// 		lambdaLogExportBucket, err := s3.NewBucket(ctx, "lambda_log_export", &s3.BucketArgs{
/// 			Bucket: pulumi.Sprintf("%v-bucket", lambdaFunctionName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		export, err := cloudwatch.NewLogGroup(ctx, "export", &cloudwatch.LogGroupArgs{
/// 			Name:          pulumi.Sprintf("/aws/lambda/%v", lambdaFunctionName),
/// 			LogGroupClass: pulumi.String("DELIVERY"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logsAssumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"logs.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		logsLogExport, err := iam.NewRole(ctx, "logs_log_export", &iam.RoleArgs{
/// 			Name:             pulumi.Sprintf("%v-lambda-log-export-role", lambdaFunctionName),
/// 			AssumeRolePolicy: pulumi.String(logsAssumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		lambdaLogExport := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Resources: pulumi.StringArray{
/// 						lambdaLogExportBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "lambda_log_export", &iam.RolePolicyArgs{
/// 			Policy: lambdaLogExport.Json(),
/// 			Role:   logsLogExport.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogSubscriptionFilter(ctx, "lambda_log_export", &cloudwatch.LogSubscriptionFilterArgs{
/// 			Name:           pulumi.Sprintf("%v-filter", lambdaFunctionName),
/// 			LogGroup:       export.Name,
/// 			FilterPattern:  pulumi.String(""),
/// 			DestinationArn: lambdaLogExportBucket.Arn,
/// 			RoleArn:        logsLogExport.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunction(ctx, "log_export", &lambda.FunctionArgs{
/// 			LoggingConfig: &lambda.FunctionLoggingConfigArgs{
/// 				LogFormat: pulumi.String("Text"),
/// 				LogGroup:  export.Name,
/// 			},
/// 			Name:    pulumi.String(lambdaFunctionName),
/// 			Handler: pulumi.String("index.lambda_handler"),
/// 			Runtime: pulumi.String(lambda.RuntimePython3d13),
/// 			Role:    pulumi.Any(example.Arn),
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			export,
/// 		}))
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
/// data "aws_iam_getpolicydocument" "logsAssumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["logs.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRole"]
///     effect  = "Allow"
///   }
/// }
/// data "aws_iam_getpolicydocument" "lambdaLogExport" {
///   statements {
///     actions   = ["s3:PutObject"]
///     effect    = "Allow"
///     resources = ["${aws_s3_bucket.lambda_log_export.arn}/*"]
///   }
/// }
///
/// resource "aws_s3_bucket" "lambda_log_export" {
///   bucket ="${local.lambdaFunctionName}-bucket"
/// }
/// resource "aws_cloudwatch_loggroup" "export" {
///   name            ="/aws/lambda/${local.lambdaFunctionName}"
///   log_group_class = "DELIVERY"
/// }
/// resource "aws_iam_role" "logs_log_export" {
///   name               ="${local.lambdaFunctionName}-lambda-log-export-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.logsAssumeRole.json
/// }
/// resource "aws_iam_rolepolicy" "lambda_log_export" {
///   policy = data.aws_iam_getpolicydocument.lambdaLogExport.json
///   role   = aws_iam_role.logs_log_export.name
/// }
/// resource "aws_cloudwatch_logsubscriptionfilter" "lambda_log_export" {
///   name            ="${local.lambdaFunctionName}-filter"
///   log_group       = aws_cloudwatch_loggroup.export.name
///   filter_pattern  = ""
///   destination_arn = aws_s3_bucket.lambda_log_export.arn
///   role_arn        = aws_iam_role.logs_log_export.arn
/// }
/// resource "aws_lambda_function" "log_export" {
///   depends_on = [aws_cloudwatch_loggroup.export]
///   logging_config = {
///     log_format = "Text"
///     log_group  = aws_cloudwatch_loggroup.export.name
///   }
///   name    = local.lambdaFunctionName
///   handler = "index.lambda_handler"
///   runtime = "python3.13"
///   role    = example.arn
///   code    = fileArchive("function.zip")
/// }
/// locals {
///   lambdaFunctionName = "lambda-log-export-example"
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.cloudwatch.LogSubscriptionFilter;
/// import com.pulumi.aws.cloudwatch.LogSubscriptionFilterArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionLoggingConfigArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var lambdaFunctionName = "lambda-log-export-example";
///
///         var lambdaLogExportBucket = new Bucket("lambdaLogExportBucket", BucketArgs.builder()
///             .bucket(String.format("%s-bucket", lambdaFunctionName))
///             .build());
///
///         var export = new LogGroup("export", LogGroupArgs.builder()
///             .name(String.format("/aws/lambda/%s", lambdaFunctionName))
///             .logGroupClass("DELIVERY")
///             .build());
///
///         final var logsAssumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("logs.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .effect("Allow")
///                 .build())
///             .build());
///
///         var logsLogExport = new Role("logsLogExport", RoleArgs.builder()
///             .name(String.format("%s-lambda-log-export-role", lambdaFunctionName))
///             .assumeRolePolicy(logsAssumeRole.json())
///             .build());
///
///         final var lambdaLogExport = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("s3:PutObject")
///                 .effect("Allow")
///                 .resources(lambdaLogExportBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var lambdaLogExportRolePolicy = new RolePolicy("lambdaLogExportRolePolicy", RolePolicyArgs.builder()
///             .policy(lambdaLogExport.applyValue(_lambdaLogExport -> _lambdaLogExport.json()))
///             .role(logsLogExport.name())
///             .build());
///
///         var lambdaLogExportLogSubscriptionFilter = new LogSubscriptionFilter("lambdaLogExportLogSubscriptionFilter", LogSubscriptionFilterArgs.builder()
///             .name(String.format("%s-filter", lambdaFunctionName))
///             .logGroup(export.name())
///             .filterPattern("")
///             .destinationArn(lambdaLogExportBucket.arn())
///             .roleArn(logsLogExport.arn())
///             .build());
///
///         var logExport = new Function("logExport", FunctionArgs.builder()
///             .loggingConfig(FunctionLoggingConfigArgs.builder()
///                 .logFormat("Text")
///                 .logGroup(export.name())
///                 .build())
///             .name(lambdaFunctionName)
///             .handler("index.lambda_handler")
///             .runtime("python3.13")
///             .role(example.arn())
///             .code(new FileArchive("function.zip"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(export)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   lambdaLogExportBucket:
///     type: aws:s3:Bucket
///     name: lambda_log_export
///     properties:
///       bucket: ${lambdaFunctionName}-bucket
///   export:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: /aws/lambda/${lambdaFunctionName}
///       logGroupClass: DELIVERY
///   logsLogExport:
///     type: aws:iam:Role
///     name: logs_log_export
///     properties:
///       name: ${lambdaFunctionName}-lambda-log-export-role
///       assumeRolePolicy: ${logsAssumeRole.json}
///   lambdaLogExportRolePolicy:
///     type: aws:iam:RolePolicy
///     name: lambda_log_export
///     properties:
///       policy: ${lambdaLogExport.json}
///       role: ${logsLogExport.name}
///   lambdaLogExportLogSubscriptionFilter:
///     type: aws:cloudwatch:LogSubscriptionFilter
///     name: lambda_log_export
///     properties:
///       name: ${lambdaFunctionName}-filter
///       logGroup: ${export.name}
///       filterPattern: ""
///       destinationArn: ${lambdaLogExportBucket.arn}
///       roleArn: ${logsLogExport.arn}
///   logExport:
///     type: aws:lambda:Function
///     name: log_export
///     properties:
///       loggingConfig:
///         logFormat: Text
///         logGroup: ${export.name}
///       name: ${lambdaFunctionName}
///       handler: index.lambda_handler
///       runtime: python3.13
///       role: ${example.arn}
///       code:
///         fn::fileArchive: function.zip
///     options:
///       dependsOn:
///         - ${export}
/// variables:
///   lambdaFunctionName: lambda-log-export-example
///   logsAssumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - logs.amazonaws.com
///             actions:
///               - sts:AssumeRole
///             effect: Allow
///   lambdaLogExport:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - s3:PutObject
///             effect: Allow
///             resources:
///               - ${lambdaLogExportBucket.arn}/*
/// ```
///
///
/// ### Function with Error Handling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Main Lambda function
/// const example = new aws.lambda.Function("example", {
///     deadLetterConfig: {
///         targetArn: dlq.arn,
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_function",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// });
/// // Event invoke configuration for retries
/// const exampleFunctionEventInvokeConfig = new aws.lambda.FunctionEventInvokeConfig("example", {
///     destinationConfig: {
///         onFailure: {
///             destination: dlq.arn,
///         },
///         onSuccess: {
///             destination: success.arn,
///         },
///     },
///     functionName: example.name,
///     maximumEventAgeInSeconds: 60,
///     maximumRetryAttempts: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Main Lambda function
/// example = aws.lambda_.Function("example",
///     dead_letter_config={
///         "target_arn": dlq["arn"],
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example_function",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X)
/// # Event invoke configuration for retries
/// example_function_event_invoke_config = aws.lambda_.FunctionEventInvokeConfig("example",
///     destination_config={
///         "on_failure": {
///             "destination": dlq["arn"],
///         },
///         "on_success": {
///             "destination": success["arn"],
///         },
///     },
///     function_name=example.name,
///     maximum_event_age_in_seconds=60,
///     maximum_retry_attempts=2)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Main Lambda function
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         DeadLetterConfig = new Aws.Lambda.Inputs.FunctionDeadLetterConfigArgs
///         {
///             TargetArn = dlq.Arn,
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example_function",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     });
///
///     // Event invoke configuration for retries
///     var exampleFunctionEventInvokeConfig = new Aws.Lambda.FunctionEventInvokeConfig("example", new()
///     {
///         DestinationConfig = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigArgs
///         {
///             OnFailure = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs
///             {
///                 Destination = dlq.Arn,
///             },
///             OnSuccess = new Aws.Lambda.Inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs
///             {
///                 Destination = success.Arn,
///             },
///         },
///         FunctionName = example.Name,
///         MaximumEventAgeInSeconds = 60,
///         MaximumRetryAttempts = 2,
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
/// 		// Main Lambda function
/// 		example, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			DeadLetterConfig: &lambda.FunctionDeadLetterConfigArgs{
/// 				TargetArn: pulumi.Any(dlq.Arn),
/// 			},
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String("example_function"),
/// 			Role:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Event invoke configuration for retries
/// 		_, err = lambda.NewFunctionEventInvokeConfig(ctx, "example", &lambda.FunctionEventInvokeConfigArgs{
/// 			DestinationConfig: &lambda.FunctionEventInvokeConfigDestinationConfigArgs{
/// 				OnFailure: &lambda.FunctionEventInvokeConfigDestinationConfigOnFailureArgs{
/// 					Destination: pulumi.Any(dlq.Arn),
/// 				},
/// 				OnSuccess: &lambda.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs{
/// 					Destination: pulumi.Any(success.Arn),
/// 				},
/// 			},
/// 			FunctionName:             example.Name,
/// 			MaximumEventAgeInSeconds: pulumi.Int(60),
/// 			MaximumRetryAttempts:     pulumi.Int(2),
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
/// # Main Lambda function
/// resource "aws_lambda_function" "example" {
///   dead_letter_config = {
///     target_arn = dlq.arn
///   }
///   code    = fileArchive("function.zip")
///   name    = "example_function"
///   role    = exampleAwsIamRole.arn
///   handler = "index.handler"
///   runtime = "nodejs24.x"
/// }
/// # Event invoke configuration for retries
/// resource "aws_lambda_functioneventinvokeconfig" "example" {
///   destination_config = {
///     on_failure = {
///       destination = dlq.arn
///     }
///     on_success = {
///       destination = success.arn
///     }
///   }
///   function_name                = aws_lambda_function.example.name
///   maximum_event_age_in_seconds = 60
///   maximum_retry_attempts       = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionDeadLetterConfigArgs;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfig;
/// import com.pulumi.aws.lambda.FunctionEventInvokeConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnFailureArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEventInvokeConfigDestinationConfigOnSuccessArgs;
/// import com.pulumi.asset.FileArchive;
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
///         // Main Lambda function
///         var example = new Function("example", FunctionArgs.builder()
///             .deadLetterConfig(FunctionDeadLetterConfigArgs.builder()
///                 .targetArn(dlq.arn())
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example_function")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .build());
///
///         // Event invoke configuration for retries
///         var exampleFunctionEventInvokeConfig = new FunctionEventInvokeConfig("exampleFunctionEventInvokeConfig", FunctionEventInvokeConfigArgs.builder()
///             .destinationConfig(FunctionEventInvokeConfigDestinationConfigArgs.builder()
///                 .onFailure(FunctionEventInvokeConfigDestinationConfigOnFailureArgs.builder()
///                     .destination(dlq.arn())
///                     .build())
///                 .onSuccess(FunctionEventInvokeConfigDestinationConfigOnSuccessArgs.builder()
///                     .destination(success.arn())
///                     .build())
///                 .build())
///             .functionName(example.name())
///             .maximumEventAgeInSeconds(60)
///             .maximumRetryAttempts(2)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Main Lambda function
///   example:
///     type: aws:lambda:Function
///     properties:
///       deadLetterConfig:
///         targetArn: ${dlq.arn}
///       code:
///         fn::fileArchive: function.zip
///       name: example_function
///       role: ${exampleAwsIamRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///   # Event invoke configuration for retries
///   exampleFunctionEventInvokeConfig:
///     type: aws:lambda:FunctionEventInvokeConfig
///     name: example
///     properties:
///       destinationConfig:
///         onFailure:
///           destination: ${dlq.arn}
///         onSuccess:
///           destination: ${success.arn}
///       functionName: ${example.name}
///       maximumEventAgeInSeconds: 60
///       maximumRetryAttempts: 2
/// ```
///
///
/// ### CloudWatch Logging and Permissions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// // Name of the Lambda function
/// const functionName = config.get("functionName") || "example_function";
/// // CloudWatch Log Group with retention
/// const example = new aws.cloudwatch.LogGroup("example", {
///     name: `/aws/lambda/${functionName}`,
///     retentionInDays: 14,
///     tags: {
///         Environment: "production",
///         Function: functionName,
///     },
/// });
/// // Lambda execution role
/// const exampleRole = new aws.iam.Role("example", {
///     name: "lambda_execution_role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "lambda.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// // CloudWatch Logs policy
/// const lambdaLogging = new aws.iam.Policy("lambda_logging", {
///     name: "lambda_logging",
///     path: "/",
///     description: "IAM policy for logging from Lambda",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: [
///                 "logs:CreateLogGroup",
///                 "logs:CreateLogStream",
///                 "logs:PutLogEvents",
///             ],
///             Resource: ["arn:aws:logs:*:*:*"],
///         }],
///     }),
/// });
/// // Attach logging policy to Lambda role
/// const lambdaLogs = new aws.iam.RolePolicyAttachment("lambda_logs", {
///     role: exampleRole.name,
///     policyArn: lambdaLogging.arn,
/// });
/// // Lambda function with logging
/// const exampleFunction = new aws.lambda.Function("example", {
///     loggingConfig: {
///         logFormat: "JSON",
///         applicationLogLevel: "INFO",
///         systemLogLevel: "WARN",
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: functionName,
///     role: exampleRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// }, {
///     dependsOn: [
///         lambdaLogs,
///         example,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// # Name of the Lambda function
/// function_name = config.get("functionName")
/// if function_name is None:
///     function_name = "example_function"
/// # CloudWatch Log Group with retention
/// example = aws.cloudwatch.LogGroup("example",
///     name=f"/aws/lambda/{function_name}",
///     retention_in_days=14,
///     tags={
///         "Environment": "production",
///         "Function": function_name,
///     })
/// # Lambda execution role
/// example_role = aws.iam.Role("example",
///     name="lambda_execution_role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "lambda.amazonaws.com",
///             },
///         }],
///     }))
/// # CloudWatch Logs policy
/// lambda_logging = aws.iam.Policy("lambda_logging",
///     name="lambda_logging",
///     path="/",
///     description="IAM policy for logging from Lambda",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": [
///                 "logs:CreateLogGroup",
///                 "logs:CreateLogStream",
///                 "logs:PutLogEvents",
///             ],
///             "Resource": ["arn:aws:logs:*:*:*"],
///         }],
///     }))
/// # Attach logging policy to Lambda role
/// lambda_logs = aws.iam.RolePolicyAttachment("lambda_logs",
///     role=example_role.name,
///     policy_arn=lambda_logging.arn)
/// # Lambda function with logging
/// example_function = aws.lambda_.Function("example",
///     logging_config={
///         "log_format": "JSON",
///         "application_log_level": "INFO",
///         "system_log_level": "WARN",
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name=function_name,
///     role=example_role.arn,
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X,
///     opts = pulumi.ResourceOptions(depends_on=[
///             lambda_logs,
///             example,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     // Name of the Lambda function
///     var functionName = config.Get("functionName") ?? "example_function";
///     // CloudWatch Log Group with retention
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = $"/aws/lambda/{functionName}",
///         RetentionInDays = 14,
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Function", functionName },
///         },
///     });
///
///     // Lambda execution role
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "lambda_execution_role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "lambda.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     // CloudWatch Logs policy
///     var lambdaLogging = new Aws.Iam.Policy("lambda_logging", new()
///     {
///         Name = "lambda_logging",
///         Path = "/",
///         Description = "IAM policy for logging from Lambda",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "logs:CreateLogGroup",
///                         "logs:CreateLogStream",
///                         "logs:PutLogEvents",
///                     },
///                     ["Resource"] = new[]
///                     {
///                         "arn:aws:logs:*:*:*",
///                     },
///                 },
///             },
///         }),
///     });
///
///     // Attach logging policy to Lambda role
///     var lambdaLogs = new Aws.Iam.RolePolicyAttachment("lambda_logs", new()
///     {
///         Role = exampleRole.Name,
///         PolicyArn = lambdaLogging.Arn,
///     });
///
///     // Lambda function with logging
///     var exampleFunction = new Aws.Lambda.Function("example", new()
///     {
///         LoggingConfig = new Aws.Lambda.Inputs.FunctionLoggingConfigArgs
///         {
///             LogFormat = "JSON",
///             ApplicationLogLevel = "INFO",
///             SystemLogLevel = "WARN",
///         },
///         Code = new FileArchive("function.zip"),
///         Name = functionName,
///         Role = exampleRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             lambdaLogs,
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		// Name of the Lambda function
/// 		functionName := "example_function"
/// 		if param := cfg.Get("functionName"); param != "" {
/// 			functionName = param
/// 		}
/// 		// CloudWatch Log Group with retention
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name:            pulumi.Sprintf("/aws/lambda/%v", functionName),
/// 			RetentionInDays: pulumi.Int(14),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Function":    pulumi.String(functionName),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "lambda.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		// Lambda execution role
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("lambda_execution_role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"logs:CreateLogGroup",
/// 						"logs:CreateLogStream",
/// 						"logs:PutLogEvents",
/// 					},
/// 					"Resource": []string{
/// 						"arn:aws:logs:*:*:*",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		// CloudWatch Logs policy
/// 		lambdaLogging, err := iam.NewPolicy(ctx, "lambda_logging", &iam.PolicyArgs{
/// 			Name:        pulumi.String("lambda_logging"),
/// 			Path:        pulumi.String("/"),
/// 			Description: pulumi.String("IAM policy for logging from Lambda"),
/// 			Policy:      pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Attach logging policy to Lambda role
/// 		lambdaLogs, err := iam.NewRolePolicyAttachment(ctx, "lambda_logs", &iam.RolePolicyAttachmentArgs{
/// 			Role:      exampleRole.Name,
/// 			PolicyArn: lambdaLogging.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Lambda function with logging
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			LoggingConfig: &lambda.FunctionLoggingConfigArgs{
/// 				LogFormat:           pulumi.String("JSON"),
/// 				ApplicationLogLevel: pulumi.String("INFO"),
/// 				SystemLogLevel:      pulumi.String("WARN"),
/// 			},
/// 			Code:    pulumi.NewFileArchive("function.zip"),
/// 			Name:    pulumi.String(functionName),
/// 			Role:    exampleRole.Arn,
/// 			Handler: pulumi.String("index.handler"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			lambdaLogs,
/// 			example,
/// 		}))
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
/// # CloudWatch Log Group with retention
/// resource "aws_cloudwatch_loggroup" "example" {
///   name              ="/aws/lambda/${var.functionName}"
///   retention_in_days = 14
///   tags = {
///     "Environment" = "production"
///     "Function"    = var.functionName
///   }
/// }
/// # Lambda execution role
/// resource "aws_iam_role" "example" {
///   name = "lambda_execution_role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "lambda.amazonaws.com"
///       }
///     }]
///   })
/// }
/// # CloudWatch Logs policy
/// resource "aws_iam_policy" "lambda_logging" {
///   name        = "lambda_logging"
///   path        = "/"
///   description = "IAM policy for logging from Lambda"
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect"   = "Allow"
///       "Action"   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents"]
///       "Resource" = ["arn:aws:logs:*:*:*"]
///     }]
///   })
/// }
/// # Attach logging policy to Lambda role
/// resource "aws_iam_rolepolicyattachment" "lambda_logs" {
///   role       = aws_iam_role.example.name
///   policy_arn = aws_iam_policy.lambda_logging.arn
/// }
/// # Lambda function with logging
/// resource "aws_lambda_function" "example" {
///   depends_on = [aws_iam_rolepolicyattachment.lambda_logs, aws_cloudwatch_loggroup.example]
///   logging_config = {
///     log_format            = "JSON"
///     application_log_level = "INFO"
///     system_log_level      = "WARN"
///   }
///   code    = fileArchive("function.zip")
///   name    = var.functionName
///   role    = aws_iam_role.example.arn
///   handler = "index.handler"
///   runtime = "nodejs24.x"
/// }
/// # Function name variable
/// variable "functionName" {
///   type        = string
///   default     = "example_function"
///   description = "Name of the Lambda function"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionLoggingConfigArgs;
/// import com.pulumi.asset.FileArchive;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var config = ctx.config();
///         final var functionName = config.get("functionName").orElse("example_function");
///         // CloudWatch Log Group with retention
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name(String.format("/aws/lambda/%s", functionName))
///             .retentionInDays(14)
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Function", functionName)
///             ))
///             .build());
///
///         // Lambda execution role
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("lambda_execution_role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "lambda.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         // CloudWatch Logs policy
///         var lambdaLogging = new Policy("lambdaLogging", PolicyArgs.builder()
///             .name("lambda_logging")
///             .path("/")
///             .description("IAM policy for logging from Lambda")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray(
///                             "logs:CreateLogGroup",
///                             "logs:CreateLogStream",
///                             "logs:PutLogEvents"
///                         )),
///                         jsonProperty("Resource", jsonArray("arn:aws:logs:*:*:*"))
///                     )))
///                 )))
///             .build());
///
///         // Attach logging policy to Lambda role
///         var lambdaLogs = new RolePolicyAttachment("lambdaLogs", RolePolicyAttachmentArgs.builder()
///             .role(exampleRole.name())
///             .policyArn(lambdaLogging.arn())
///             .build());
///
///         // Lambda function with logging
///         var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
///             .loggingConfig(FunctionLoggingConfigArgs.builder()
///                 .logFormat("JSON")
///                 .applicationLogLevel("INFO")
///                 .systemLogLevel("WARN")
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name(functionName)
///             .role(exampleRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     lambdaLogs,
///                     example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   # Function name variable
///   functionName:
///     type: string
///     default: example_function
/// resources:
///   # CloudWatch Log Group with retention
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: /aws/lambda/${functionName}
///       retentionInDays: 14
///       tags:
///         Environment: production
///         Function: ${functionName}
///   # Lambda execution role
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: lambda_execution_role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: lambda.amazonaws.com
///   # CloudWatch Logs policy
///   lambdaLogging:
///     type: aws:iam:Policy
///     name: lambda_logging
///     properties:
///       name: lambda_logging
///       path: /
///       description: IAM policy for logging from Lambda
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action:
///                 - logs:CreateLogGroup
///                 - logs:CreateLogStream
///                 - logs:PutLogEvents
///               Resource:
///                 - arn:aws:logs:*:*:*
///   # Attach logging policy to Lambda role
///   lambdaLogs:
///     type: aws:iam:RolePolicyAttachment
///     name: lambda_logs
///     properties:
///       role: ${exampleRole.name}
///       policyArn: ${lambdaLogging.arn}
///   # Lambda function with logging
///   exampleFunction:
///     type: aws:lambda:Function
///     name: example
///     properties:
///       loggingConfig:
///         logFormat: JSON
///         applicationLogLevel: INFO
///         systemLogLevel: WARN
///       code:
///         fn::fileArchive: function.zip
///       name: ${functionName}
///       role: ${exampleRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///     options:
///       dependsOn:
///         - ${lambdaLogs}
///         - ${example}
/// ```
///
///
/// ### Function with Durable Configuration
///
/// Stopping durable executions and deleting the Lambda function may take up to `60m`. Use configured `timeouts` as shown below.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambda.Function("example", {
///     durableConfig: {
///         executionTimeout: 3600,
///         retentionPeriod: 7,
///     },
///     environment: {
///         variables: {
///             DURABLE_MODE: "enabled",
///         },
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example_durable_function",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
///     memorySize: 512,
///     timeout: 30,
///     tags: {
///         Environment: "production",
///         Type: "durable",
///     },
/// }, {
///     customTimeouts: {
///         "delete": "60m",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda_.Function("example",
///     durable_config={
///         "execution_timeout": 3600,
///         "retention_period": 7,
///     },
///     environment={
///         "variables": {
///             "DURABLE_MODE": "enabled",
///         },
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example_durable_function",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X,
///     memory_size=512,
///     timeout=30,
///     tags={
///         "Environment": "production",
///         "Type": "durable",
///     },
///     opts = pulumi.ResourceOptions(custom_timeouts=pulumi.CustomTimeouts(delete="60m")))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         DurableConfig = new Aws.Lambda.Inputs.FunctionDurableConfigArgs
///         {
///             ExecutionTimeout = 3600,
///             RetentionPeriod = 7,
///         },
///         Environment = new Aws.Lambda.Inputs.FunctionEnvironmentArgs
///         {
///             Variables =
///             {
///                 { "DURABLE_MODE", "enabled" },
///             },
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example_durable_function",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///         MemorySize = 512,
///         Timeout = 30,
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Type", "durable" },
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
/// 		_, err := lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			DurableConfig: &lambda.FunctionDurableConfigArgs{
/// 				ExecutionTimeout: pulumi.Int(3600),
/// 				RetentionPeriod:  pulumi.Int(7),
/// 			},
/// 			Environment: &lambda.FunctionEnvironmentArgs{
/// 				Variables: pulumi.StringMap{
/// 					"DURABLE_MODE": pulumi.String("enabled"),
/// 				},
/// 			},
/// 			Code:       pulumi.NewFileArchive("function.zip"),
/// 			Name:       pulumi.String("example_durable_function"),
/// 			Role:       pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler:    pulumi.String("index.handler"),
/// 			Runtime:    pulumi.String(lambda.RuntimeNodeJS24dX),
/// 			MemorySize: pulumi.Int(512),
/// 			Timeout:    pulumi.Int(30),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Type":        pulumi.String("durable"),
/// 			},
/// 		}, pulumi.Timeouts(&pulumi.CustomTimeouts{Delete: "60m"}))
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
/// resource "aws_lambda_function" "example" {
///   timeouts {
///     delete = "60m"
///   }
///   durable_config = {
///     execution_timeout = 3600
///     retention_period  = 7
///   }
///   # 1 hour maximum execution time
///   # 1 hour maximum execution time
///   # Retain execution state for 7 days
///   environment = {
///     variables = {
///       "DURABLE_MODE" = "enabled"
///     }
///   }
///   code        = fileArchive("function.zip")
///   name        = "example_durable_function"
///   role        = exampleAwsIamRole.arn
///   handler     = "index.handler"
///   runtime     = "nodejs24.x"
///   memory_size = 512
///   timeout     = 30
///   # Durable function configuration for long-running processes
///   tags = {
///     "Environment" = "production"
///     "Type"        = "durable"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionDurableConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionEnvironmentArgs;
/// import com.pulumi.asset.FileArchive;
/// import com.pulumi.resources.CustomResourceOptions;
/// import com.pulumi.resources.CustomTimeouts;
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
///         var example = new Function("example", FunctionArgs.builder()
///             .durableConfig(FunctionDurableConfigArgs.builder()
///                 .executionTimeout(3600)
///                 .retentionPeriod(7)
///                 .build())
///             .environment(FunctionEnvironmentArgs.builder()
///                 .variables(Map.of("DURABLE_MODE", "enabled"))
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example_durable_function")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .memorySize(512)
///             .timeout(30)
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Type", "durable")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .customTimeouts(CustomTimeouts.builder()
///                     .delete(CustomTimeouts.parseTimeoutString("60m"))
///                 .build())
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Function
///     properties:
///       durableConfig:
///         executionTimeout: 3600
///         retentionPeriod: 7
///       environment:
///         variables:
///           DURABLE_MODE: enabled
///       code:
///         fn::fileArchive: function.zip
///       name: example_durable_function
///       role: ${exampleAwsIamRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///       memorySize: 512
///       timeout: 30 # Durable function configuration for long-running processes
///       tags:
///         Environment: production
///         Type: durable
///     options:
///       customTimeouts:
///         delete: 60m
/// ```
///
///
/// ### Capacity Provider Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleCapacityProvider = new aws.lambda.CapacityProvider("example", {
///     vpcConfig: {
///         subnetIds: [exampleAwsSubnet.id],
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     },
///     permissionsConfig: {
///         capacityProviderOperatorRoleArn: exampleAwsIamRole.arn,
///     },
///     name: "example",
/// });
/// const example = new aws.lambda.Function("example", {
///     capacityProviderConfig: {
///         lambdaManagedInstancesCapacityProviderConfig: {
///             capacityProviderArn: exampleCapacityProvider.arn,
///         },
///     },
///     code: new pulumi.asset.FileArchive("function.zip"),
///     name: "example",
///     role: exampleAwsIamRole.arn,
///     handler: "index.handler",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
///     memorySize: 2048,
///     publish: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_capacity_provider = aws.lambda_.CapacityProvider("example",
///     vpc_config={
///         "subnet_ids": [example_aws_subnet["id"]],
///         "security_group_ids": [example_aws_security_group["id"]],
///     },
///     permissions_config={
///         "capacity_provider_operator_role_arn": example_aws_iam_role["arn"],
///     },
///     name="example")
/// example = aws.lambda_.Function("example",
///     capacity_provider_config={
///         "lambda_managed_instances_capacity_provider_config": {
///             "capacity_provider_arn": example_capacity_provider.arn,
///         },
///     },
///     code=pulumi.FileArchive("function.zip"),
///     name="example",
///     role=example_aws_iam_role["arn"],
///     handler="index.handler",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X,
///     memory_size=2048,
///     publish=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCapacityProvider = new Aws.Lambda.CapacityProvider("example", new()
///     {
///         VpcConfig = new Aws.Lambda.Inputs.CapacityProviderVpcConfigArgs
///         {
///             SubnetIds = new[]
///             {
///                 exampleAwsSubnet.Id,
///             },
///             SecurityGroupIds = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///         },
///         PermissionsConfig = new Aws.Lambda.Inputs.CapacityProviderPermissionsConfigArgs
///         {
///             CapacityProviderOperatorRoleArn = exampleAwsIamRole.Arn,
///         },
///         Name = "example",
///     });
///
///     var example = new Aws.Lambda.Function("example", new()
///     {
///         CapacityProviderConfig = new Aws.Lambda.Inputs.FunctionCapacityProviderConfigArgs
///         {
///             LambdaManagedInstancesCapacityProviderConfig = new Aws.Lambda.Inputs.FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs
///             {
///                 CapacityProviderArn = exampleCapacityProvider.Arn,
///             },
///         },
///         Code = new FileArchive("function.zip"),
///         Name = "example",
///         Role = exampleAwsIamRole.Arn,
///         Handler = "index.handler",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///         MemorySize = 2048,
///         Publish = true,
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
/// 		exampleCapacityProvider, err := lambda.NewCapacityProvider(ctx, "example", &lambda.CapacityProviderArgs{
/// 			VpcConfig: &lambda.CapacityProviderVpcConfigArgs{
/// 				SubnetIds: pulumi.StringArray{
/// 					exampleAwsSubnet.Id,
/// 				},
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					exampleAwsSecurityGroup.Id,
/// 				},
/// 			},
/// 			PermissionsConfig: &lambda.CapacityProviderPermissionsConfigArgs{
/// 				CapacityProviderOperatorRoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// 			CapacityProviderConfig: &lambda.FunctionCapacityProviderConfigArgs{
/// 				LambdaManagedInstancesCapacityProviderConfig: &lambda.FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs{
/// 					CapacityProviderArn: exampleCapacityProvider.Arn,
/// 				},
/// 			},
/// 			Code:       pulumi.NewFileArchive("function.zip"),
/// 			Name:       pulumi.String("example"),
/// 			Role:       pulumi.Any(exampleAwsIamRole.Arn),
/// 			Handler:    pulumi.String("index.handler"),
/// 			Runtime:    pulumi.String(lambda.RuntimeNodeJS24dX),
/// 			MemorySize: pulumi.Int(2048),
/// 			Publish:    pulumi.Bool(true),
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
/// resource "aws_lambda_function" "example" {
///   capacity_provider_config = {
///     lambda_managed_instances_capacity_provider_config = {
///       capacity_provider_arn = aws_lambda_capacityprovider.example.arn
///     }
///   }
///   code        = fileArchive("function.zip")
///   name        = "example"
///   role        = exampleAwsIamRole.arn
///   handler     = "index.handler"
///   runtime     = "nodejs24.x"
///   memory_size = 2048
///   publish     = true
/// }
/// resource "aws_lambda_capacityprovider" "example" {
///   vpc_config = {
///     subnet_ids         = [exampleAwsSubnet.id]
///     security_group_ids = [exampleAwsSecurityGroup.id]
///   }
///   permissions_config = {
///     capacity_provider_operator_role_arn = exampleAwsIamRole.arn
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambda.CapacityProvider;
/// import com.pulumi.aws.lambda.CapacityProviderArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderVpcConfigArgs;
/// import com.pulumi.aws.lambda.inputs.CapacityProviderPermissionsConfigArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionCapacityProviderConfigArgs;
/// import com.pulumi.aws.lambda.inputs.FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs;
/// import com.pulumi.asset.FileArchive;
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
///         var exampleCapacityProvider = new CapacityProvider("exampleCapacityProvider", CapacityProviderArgs.builder()
///             .vpcConfig(CapacityProviderVpcConfigArgs.builder()
///                 .subnetIds(exampleAwsSubnet.id())
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .build())
///             .permissionsConfig(CapacityProviderPermissionsConfigArgs.builder()
///                 .capacityProviderOperatorRoleArn(exampleAwsIamRole.arn())
///                 .build())
///             .name("example")
///             .build());
///
///         var example = new Function("example", FunctionArgs.builder()
///             .capacityProviderConfig(FunctionCapacityProviderConfigArgs.builder()
///                 .lambdaManagedInstancesCapacityProviderConfig(FunctionCapacityProviderConfigLambdaManagedInstancesCapacityProviderConfigArgs.builder()
///                     .capacityProviderArn(exampleCapacityProvider.arn())
///                     .build())
///                 .build())
///             .code(new FileArchive("function.zip"))
///             .name("example")
///             .role(exampleAwsIamRole.arn())
///             .handler("index.handler")
///             .runtime("nodejs24.x")
///             .memorySize(2048)
///             .publish(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambda:Function
///     properties:
///       capacityProviderConfig:
///         lambdaManagedInstancesCapacityProviderConfig:
///           capacityProviderArn: ${exampleCapacityProvider.arn}
///       code:
///         fn::fileArchive: function.zip
///       name: example
///       role: ${exampleAwsIamRole.arn}
///       handler: index.handler
///       runtime: nodejs24.x
///       memorySize: 2048
///       publish: true
///   exampleCapacityProvider:
///     type: aws:lambda:CapacityProvider
///     name: example
///     properties:
///       vpcConfig:
///         subnetIds:
///           - ${exampleAwsSubnet.id}
///         securityGroupIds:
///           - ${exampleAwsSecurityGroup.id}
///       permissionsConfig:
///         capacityProviderOperatorRoleArn: ${exampleAwsIamRole.arn}
///       name: example
/// ```
///
///
/// See the `aws.lambda.CapacityProvider` resource for more details, such as configuring instance requirements and the scaling policy.
/// AWS Lambda expects source code to be provided as a deployment package whose structure varies depending on which `runtime` is in use. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for the valid values of `runtime`. The expected structure of the deployment package can be found in [the AWS Lambda documentation for each runtime](https://docs.aws.amazon.com/lambda/latest/dg/deployment-package-v2.html).
///
/// Once you have created your deployment package you can specify it either directly as a local file (using the `filename` argument) or indirectly via Amazon S3 (using the `s3Bucket`, `s3Key` and `s3ObjectVersion` arguments). When providing the deployment package via S3 it may be useful to use the `aws.s3.BucketObjectv2` resource to upload it.
///
/// For larger deployment packages it is recommended by Amazon to upload via S3, since the S3 API has better support for uploading large files efficiently.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `functionName` (String) Name of the Lambda function.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Lambda Functions using the `functionName`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/function:Function example example
/// ```
class FunctionType extends pulumi.CustomResource {
  /// Instruction set architecture for your Lambda function. Valid values are `["x8664"]` and `["arm64"]`. Default is `["x8664"]`. Removing this attribute, function's architecture stays the same.
  late final pulumi.Output<List<String>> architectures;
  /// ARN identifying your Lambda Function.
  late final pulumi.Output<String> arn;
  /// Configuration block for Lambda Capacity Provider. See below.
  late final pulumi.Output<FunctionCapacityProviderConfig?> capacityProviderConfig;
  /// Path to the function's deployment package within the local filesystem. Conflicts with `imageUri` and `s3Bucket`. One of `filename`, `imageUri`, or `s3Bucket` must be specified.
  late final pulumi.Output<dynamic> code;
  /// Base64-encoded representation the source code package file. Use this argument to trigger updates when the function source code changes. For OCI, this value is relayed directly from the image digest. For zip files, this value is the Base64 encoded SHA-256 hash of the `.zip` file. Layers are not included in the calculation. To trigger updates using a non-standard hashing algorithm, use the `sourceCodeHash` argument instead.
  late final pulumi.Output<String> codeSha256;
  /// ARN of a code-signing configuration to enable code signing for this function.
  late final pulumi.Output<String?> codeSigningConfigArn;
  /// Configuration block for dead letter queue. See below.
  late final pulumi.Output<FunctionDeadLetterConfig?> deadLetterConfig;
  /// Description of what your Lambda Function does.
  late final pulumi.Output<String?> description;
  /// Configuration block for durable function settings. See below. `durableConfig` may only be available in [limited regions](https://builder.aws.com/build/capabilities), including `us-east-2`.
  late final pulumi.Output<FunctionDurableConfig?> durableConfig;
  /// Configuration block for environment variables. See below.
  late final pulumi.Output<FunctionEnvironment?> environment;
  /// Amount of ephemeral storage (`/tmp`) to allocate for the Lambda Function. See below.
  late final pulumi.Output<FunctionEphemeralStorage> ephemeralStorage;
  /// Configuration block for EFS or S3 Files file system. See below.
  late final pulumi.Output<FunctionFileSystemConfig?> fileSystemConfig;
  /// Function entry point in your code. Required if `packageType` is `Zip`.
  late final pulumi.Output<String?> handler;
  /// Container image configuration values. See below.
  late final pulumi.Output<FunctionImageConfig?> imageConfig;
  /// ECR image URI containing the function's deployment package. Conflicts with `filename` and `s3Bucket`. One of `filename`, `imageUri`, or `s3Bucket` must be specified.
  late final pulumi.Output<String?> imageUri;
  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final pulumi.Output<String> invokeArn;
  /// ARN of the KMS key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Date this resource was last modified.
  late final pulumi.Output<String> lastModified;
  /// List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  late final pulumi.Output<List<String>?> layers;
  /// Configuration block for advanced logging settings. See below.
  late final pulumi.Output<FunctionLoggingConfig> loggingConfig;
  /// Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  late final pulumi.Output<int?> memorySize;
  /// Unique name for your Lambda Function.
  late final pulumi.Output<String> name;
  /// Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  late final pulumi.Output<String?> packageType;
  /// Whether to publish creation/change as new Lambda Function Version. Defaults to `false`.
  late final pulumi.Output<bool?> publish;
  /// Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  late final pulumi.Output<String?> publishTo;
  /// ARN identifying your Lambda Function Version (if versioning is enabled via `publish = true`).
  late final pulumi.Output<String> qualifiedArn;
  /// Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final pulumi.Output<String> qualifiedInvokeArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  late final pulumi.Output<bool?> replaceSecurityGroupsOnDestroy;
  /// List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replaceSecurityGroupsOnDestroy` is `true`.
  late final pulumi.Output<List<String>?> replacementSecurityGroupIds;
  /// Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  late final pulumi.Output<int?> reservedConcurrentExecutions;
  /// ARN to be used for invoking Lambda Function from API Gateway with response streaming - to be used in `aws.apigateway.Integration`'s `uri`.
  late final pulumi.Output<String> responseStreamingInvokeArn;
  /// ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> role;
  /// Identifier of the function's runtime. Required if `packageType` is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
  late final pulumi.Output<String?> runtime;
  /// S3 bucket location containing the function's deployment package. Conflicts with `filename` and `imageUri`. One of `filename`, `imageUri`, or `s3Bucket` must be specified.
  late final pulumi.Output<String?> s3Bucket;
  /// S3 key of an object containing the function's deployment package. Required if `s3Bucket` is set.
  late final pulumi.Output<String?> s3Key;
  /// Object version containing the function's deployment package. Conflicts with `filename` and `imageUri`.
  late final pulumi.Output<String?> s3ObjectVersion;
  /// ARN of the signing job.
  late final pulumi.Output<String> signingJobArn;
  /// ARN of the signing profile version.
  late final pulumi.Output<String> signingProfileVersionArn;
  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`.
  late final pulumi.Output<bool?> skipDestroy;
  /// Configuration block for snap start settings. See below.
  late final pulumi.Output<FunctionSnapStart?> snapStart;
  /// User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the `codeSha256` argument instead.
  late final pulumi.Output<String> sourceCodeHash;
  /// Size in bytes of the function .zip file.
  late final pulumi.Output<int> sourceCodeSize;
  /// ARN of the KMS key used to encrypt the function's `.zip` deployment package. Conflicts with `imageUri`.
  late final pulumi.Output<String?> sourceKmsKeyArn;
  /// Key-value map of tags for the Lambda function. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for Tenancy. See below.
  late final pulumi.Output<FunctionTenancyConfig?> tenancyConfig;
  /// Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  late final pulumi.Output<int?> timeout;
  /// Configuration block for X-Ray tracing. See below.
  late final pulumi.Output<FunctionTracingConfig> tracingConfig;
  /// Whether to apply resource level timeout values while retrying eventually consistent API operations. By default the provider uses a 5 minute timeout to allow for propagation in the Lambda service. When set to `true`, this default value is replaced with the configurable resource timeouts. Increased timeout values may be useful in highly active accounts, or regions where propagation delays are inconsistent.
  late final pulumi.Output<bool?> useResourceTimeoutForPropagation;
  /// Latest published version of your Lambda Function.
  late final pulumi.Output<String> version;
  /// Configuration block for VPC. See below.
  late final pulumi.Output<FunctionVpcConfig?> vpcConfig;

  /// Creates a new [FunctionType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionType]. {@macro pulumi_lambda_function_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionType(
    String name, {
    FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/function:Function',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    architectures = registerOutput<List<String>>('architectures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    capacityProviderConfig = registerOutput<FunctionCapacityProviderConfig?>('capacityProviderConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionCapacityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<dynamic>('code');
    codeSha256 = registerOutput<String>('codeSha256');
    codeSigningConfigArn = registerOutput<String?>('codeSigningConfigArn');
    deadLetterConfig = registerOutput<FunctionDeadLetterConfig?>('deadLetterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionDeadLetterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    durableConfig = registerOutput<FunctionDurableConfig?>('durableConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionDurableConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environment = registerOutput<FunctionEnvironment?>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralStorage = registerOutput<FunctionEphemeralStorage>('ephemeralStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileSystemConfig = registerOutput<FunctionFileSystemConfig?>('fileSystemConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionFileSystemConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    handler = registerOutput<String?>('handler');
    imageConfig = registerOutput<FunctionImageConfig?>('imageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageUri = registerOutput<String?>('imageUri');
    invokeArn = registerOutput<String>('invokeArn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastModified = registerOutput<String>('lastModified');
    layers = registerOutput<List<String>?>('layers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    loggingConfig = registerOutput<FunctionLoggingConfig>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memorySize = registerOutput<int?>('memorySize');
    this.name = registerOutput<String>('name');
    packageType = registerOutput<String?>('packageType');
    publish = registerOutput<bool?>('publish');
    publishTo = registerOutput<String?>('publishTo');
    qualifiedArn = registerOutput<String>('qualifiedArn');
    qualifiedInvokeArn = registerOutput<String>('qualifiedInvokeArn');
    region = registerOutput<String>('region');
    replaceSecurityGroupsOnDestroy = registerOutput<bool?>('replaceSecurityGroupsOnDestroy');
    replacementSecurityGroupIds = registerOutput<List<String>?>('replacementSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reservedConcurrentExecutions = registerOutput<int?>('reservedConcurrentExecutions');
    responseStreamingInvokeArn = registerOutput<String>('responseStreamingInvokeArn');
    role = registerOutput<String>('role');
    runtime = registerOutput<String?>('runtime');
    s3Bucket = registerOutput<String?>('s3Bucket');
    s3Key = registerOutput<String?>('s3Key');
    s3ObjectVersion = registerOutput<String?>('s3ObjectVersion');
    signingJobArn = registerOutput<String>('signingJobArn');
    signingProfileVersionArn = registerOutput<String>('signingProfileVersionArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    snapStart = registerOutput<FunctionSnapStart?>('snapStart', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionSnapStart.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceCodeHash = registerOutput<String>('sourceCodeHash');
    sourceCodeSize = registerOutput<int>('sourceCodeSize');
    sourceKmsKeyArn = registerOutput<String?>('sourceKmsKeyArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenancyConfig = registerOutput<FunctionTenancyConfig?>('tenancyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionTenancyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeout = registerOutput<int?>('timeout');
    tracingConfig = registerOutput<FunctionTracingConfig>('tracingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionTracingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    useResourceTimeoutForPropagation = registerOutput<bool?>('useResourceTimeoutForPropagation');
    version = registerOutput<String>('version');
    vpcConfig = registerOutput<FunctionVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FunctionType] resource's state with the given [name] and [id].
  static FunctionType get(
    String name,
    pulumi.Input<String> id, {
    FunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FunctionType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FunctionType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/function:Function',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    architectures = registerOutput<List<String>>('architectures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    capacityProviderConfig = registerOutput<FunctionCapacityProviderConfig?>('capacityProviderConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionCapacityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<dynamic>('code');
    codeSha256 = registerOutput<String>('codeSha256');
    codeSigningConfigArn = registerOutput<String?>('codeSigningConfigArn');
    deadLetterConfig = registerOutput<FunctionDeadLetterConfig?>('deadLetterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionDeadLetterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    durableConfig = registerOutput<FunctionDurableConfig?>('durableConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionDurableConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environment = registerOutput<FunctionEnvironment?>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralStorage = registerOutput<FunctionEphemeralStorage>('ephemeralStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileSystemConfig = registerOutput<FunctionFileSystemConfig?>('fileSystemConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionFileSystemConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    handler = registerOutput<String?>('handler');
    imageConfig = registerOutput<FunctionImageConfig?>('imageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageUri = registerOutput<String?>('imageUri');
    invokeArn = registerOutput<String>('invokeArn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastModified = registerOutput<String>('lastModified');
    layers = registerOutput<List<String>?>('layers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    loggingConfig = registerOutput<FunctionLoggingConfig>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memorySize = registerOutput<int?>('memorySize');
    this.name = registerOutput<String>('name');
    packageType = registerOutput<String?>('packageType');
    publish = registerOutput<bool?>('publish');
    publishTo = registerOutput<String?>('publishTo');
    qualifiedArn = registerOutput<String>('qualifiedArn');
    qualifiedInvokeArn = registerOutput<String>('qualifiedInvokeArn');
    region = registerOutput<String>('region');
    replaceSecurityGroupsOnDestroy = registerOutput<bool?>('replaceSecurityGroupsOnDestroy');
    replacementSecurityGroupIds = registerOutput<List<String>?>('replacementSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reservedConcurrentExecutions = registerOutput<int?>('reservedConcurrentExecutions');
    responseStreamingInvokeArn = registerOutput<String>('responseStreamingInvokeArn');
    role = registerOutput<String>('role');
    runtime = registerOutput<String?>('runtime');
    s3Bucket = registerOutput<String?>('s3Bucket');
    s3Key = registerOutput<String?>('s3Key');
    s3ObjectVersion = registerOutput<String?>('s3ObjectVersion');
    signingJobArn = registerOutput<String>('signingJobArn');
    signingProfileVersionArn = registerOutput<String>('signingProfileVersionArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    snapStart = registerOutput<FunctionSnapStart?>('snapStart', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionSnapStart.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceCodeHash = registerOutput<String>('sourceCodeHash');
    sourceCodeSize = registerOutput<int>('sourceCodeSize');
    sourceKmsKeyArn = registerOutput<String?>('sourceKmsKeyArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenancyConfig = registerOutput<FunctionTenancyConfig?>('tenancyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionTenancyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeout = registerOutput<int?>('timeout');
    tracingConfig = registerOutput<FunctionTracingConfig>('tracingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionTracingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    useResourceTimeoutForPropagation = registerOutput<bool?>('useResourceTimeoutForPropagation');
    version = registerOutput<String>('version');
    vpcConfig = registerOutput<FunctionVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FunctionType] resource.
  FunctionType.reference(String urn)
    : super(
        'aws:lambda/function:Function',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    architectures = registerOutput<List<String>>('architectures', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    capacityProviderConfig = registerOutput<FunctionCapacityProviderConfig?>('capacityProviderConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionCapacityProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<dynamic>('code');
    codeSha256 = registerOutput<String>('codeSha256');
    codeSigningConfigArn = registerOutput<String?>('codeSigningConfigArn');
    deadLetterConfig = registerOutput<FunctionDeadLetterConfig?>('deadLetterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionDeadLetterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    durableConfig = registerOutput<FunctionDurableConfig?>('durableConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionDurableConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environment = registerOutput<FunctionEnvironment?>('environment', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ephemeralStorage = registerOutput<FunctionEphemeralStorage>('ephemeralStorage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fileSystemConfig = registerOutput<FunctionFileSystemConfig?>('fileSystemConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionFileSystemConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    handler = registerOutput<String?>('handler');
    imageConfig = registerOutput<FunctionImageConfig?>('imageConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageUri = registerOutput<String?>('imageUri');
    invokeArn = registerOutput<String>('invokeArn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    lastModified = registerOutput<String>('lastModified');
    layers = registerOutput<List<String>?>('layers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    loggingConfig = registerOutput<FunctionLoggingConfig>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memorySize = registerOutput<int?>('memorySize');
    this.name = registerOutput<String>('name');
    packageType = registerOutput<String?>('packageType');
    publish = registerOutput<bool?>('publish');
    publishTo = registerOutput<String?>('publishTo');
    qualifiedArn = registerOutput<String>('qualifiedArn');
    qualifiedInvokeArn = registerOutput<String>('qualifiedInvokeArn');
    region = registerOutput<String>('region');
    replaceSecurityGroupsOnDestroy = registerOutput<bool?>('replaceSecurityGroupsOnDestroy');
    replacementSecurityGroupIds = registerOutput<List<String>?>('replacementSecurityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    reservedConcurrentExecutions = registerOutput<int?>('reservedConcurrentExecutions');
    responseStreamingInvokeArn = registerOutput<String>('responseStreamingInvokeArn');
    role = registerOutput<String>('role');
    runtime = registerOutput<String?>('runtime');
    s3Bucket = registerOutput<String?>('s3Bucket');
    s3Key = registerOutput<String?>('s3Key');
    s3ObjectVersion = registerOutput<String?>('s3ObjectVersion');
    signingJobArn = registerOutput<String>('signingJobArn');
    signingProfileVersionArn = registerOutput<String>('signingProfileVersionArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    snapStart = registerOutput<FunctionSnapStart?>('snapStart', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionSnapStart.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceCodeHash = registerOutput<String>('sourceCodeHash');
    sourceCodeSize = registerOutput<int>('sourceCodeSize');
    sourceKmsKeyArn = registerOutput<String?>('sourceKmsKeyArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenancyConfig = registerOutput<FunctionTenancyConfig?>('tenancyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionTenancyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeout = registerOutput<int?>('timeout');
    tracingConfig = registerOutput<FunctionTracingConfig>('tracingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionTracingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    useResourceTimeoutForPropagation = registerOutput<bool?>('useResourceTimeoutForPropagation');
    version = registerOutput<String>('version');
    vpcConfig = registerOutput<FunctionVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
