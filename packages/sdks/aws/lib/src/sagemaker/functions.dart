import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_content_args.dart';
import 'get_hub_content_result.dart';
import 'get_prebuilt_ecr_image_args.dart';
import 'get_prebuilt_ecr_image_result.dart';

/// Provides details about an AWS SageMaker AI Hub Content, such as a model in the SageMaker JumpStart public hub or a model reference in a private hub.
///
/// ## Example Usage
///
/// ### Public Hub Model
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.sagemaker.getHubContent({
///     hubName: "SageMakerPublicHub",
///     hubContentName: "meta-textgeneration-llama-2-13b-f",
///     hubContentType: "Model",
/// });
/// const hostingArtifactUri = example.then(example => std.jsondecode({
///     input: example.hubContentDocument,
/// })).then(invoke => invoke.result?.HostingArtifactUri);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.sagemaker.get_hub_content(hub_name="SageMakerPublicHub",
///     hub_content_name="meta-textgeneration-llama-2-13b-f",
///     hub_content_type="Model")
/// hosting_artifact_uri = std.jsondecode(input=example.hub_content_document).result["HostingArtifactUri"]
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
///     var example = Aws.Sagemaker.GetHubContent.Invoke(new()
///     {
///         HubName = "SageMakerPublicHub",
///         HubContentName = "meta-textgeneration-llama-2-13b-f",
///         HubContentType = "Model",
///     });
///
///     var hostingArtifactUri = Std.Jsondecode.Invoke(new()
///     {
///         Input = example.Apply(getHubContentResult => getHubContentResult.HubContentDocument),
///     }).Apply(invoke => invoke.Result?.HostingArtifactUri);
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sagemaker.GetHubContent(ctx, &sagemaker.GetHubContentArgs{
/// 			HubName:        "SageMakerPublicHub",
/// 			HubContentName: "meta-textgeneration-llama-2-13b-f",
/// 			HubContentType: "Model",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ := std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: example.HubContentDocument,
/// 		}, nil).Result.HostingArtifactUri
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_sagemaker_hub_content" "example" {
///   hub_name         = "SageMakerPublicHub"
///   hub_content_name = "meta-textgeneration-llama-2-13b-f"
///   hub_content_type = "Model"
/// }
///
/// locals {
///   hostingArtifactUri = jsondecode(data.aws_sagemaker_hub_content.example.hub_content_document).hosting_artifact_uri
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.SagemakerFunctions;
/// import com.pulumi.aws.sagemaker.inputs.GetHubContentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
///         final var example = SagemakerFunctions.getHubContent(GetHubContentArgs.builder()
///             .hubName("SageMakerPublicHub")
///             .hubContentName("meta-textgeneration-llama-2-13b-f")
///             .hubContentType("Model")
///             .build());
///
///         final var hostingArtifactUri = StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.hubContentDocument())
///             .build()).result().HostingArtifactUri();
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sagemaker:getHubContent
///       arguments:
///         hubName: SageMakerPublicHub
///         hubContentName: meta-textgeneration-llama-2-13b-f
///         hubContentType: Model
///   hostingArtifactUri:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.hubContentDocument}
///       return: result.HostingArtifactUri
/// ```
///
///
/// ### Private Hub Model Reference
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.sagemaker.getHubContent({
///     hubName: exampleAwsSagemakerHubContentReference.hubName,
///     hubContentName: exampleAwsSagemakerHubContentReference.hubContentName,
///     hubContentType: "ModelReference",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.get_hub_content(hub_name=example_aws_sagemaker_hub_content_reference["hubName"],
///     hub_content_name=example_aws_sagemaker_hub_content_reference["hubContentName"],
///     hub_content_type="ModelReference")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Sagemaker.GetHubContent.Invoke(new()
///     {
///         HubName = exampleAwsSagemakerHubContentReference.HubName,
///         HubContentName = exampleAwsSagemakerHubContentReference.HubContentName,
///         HubContentType = "ModelReference",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.GetHubContent(ctx, &sagemaker.GetHubContentArgs{
/// 			HubName:        exampleAwsSagemakerHubContentReference.HubName,
/// 			HubContentName: exampleAwsSagemakerHubContentReference.HubContentName,
/// 			HubContentType: "ModelReference",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_sagemaker_hub_content" "example" {
///   hub_name         = exampleAwsSagemakerHubContentReference.hubName
///   hub_content_name = exampleAwsSagemakerHubContentReference.hubContentName
///   hub_content_type = "ModelReference"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.SagemakerFunctions;
/// import com.pulumi.aws.sagemaker.inputs.GetHubContentArgs;
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
///         final var example = SagemakerFunctions.getHubContent(GetHubContentArgs.builder()
///             .hubName(exampleAwsSagemakerHubContentReference.get("hubName"))
///             .hubContentName(exampleAwsSagemakerHubContentReference.get("hubContentName"))
///             .hubContentType("ModelReference")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sagemaker:getHubContent
///       arguments:
///         hubName: ${exampleAwsSagemakerHubContentReference.hubName}
///         hubContentName: ${exampleAwsSagemakerHubContentReference.hubContentName}
///         hubContentType: ModelReference
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sagemaker_get_hub_content_get_hub_content_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubContentResult> getHubContent(
  GetHubContentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sagemaker/getHubContent:getHubContent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubContentResult.fromMap(result);
}

pulumi.Output<GetHubContentResult> getHubContentOutput(
  GetHubContentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:sagemaker/getHubContent:getHubContent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubContentResult.fromMap);
}

/// Get information about prebuilt Amazon SageMaker AI  Docker images.
///
/// &gt; **NOTE:** The AWS provider creates a validly constructed `registryPath` but does not verify that the `registryPath` corresponds to an existing image. For example, using a `registryPath` containing an `imageTag` that does not correspond to a Docker image in the ECR repository, will result in an error.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.sagemaker.getPrebuiltEcrImage({
///     repositoryName: "sagemaker-scikit-learn",
///     imageTag: "2.2-1.0.11.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sagemaker.get_prebuilt_ecr_image(repository_name="sagemaker-scikit-learn",
///     image_tag="2.2-1.0.11.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Sagemaker.GetPrebuiltEcrImage.Invoke(new()
///     {
///         RepositoryName = "sagemaker-scikit-learn",
///         ImageTag = "2.2-1.0.11.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.GetPrebuiltEcrImage(ctx, &sagemaker.GetPrebuiltEcrImageArgs{
/// 			RepositoryName: "sagemaker-scikit-learn",
/// 			ImageTag:       pulumi.StringRef("2.2-1.0.11.0"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_sagemaker_prebuilt_ecr_image" "test" {
///   repository_name = "sagemaker-scikit-learn"
///   image_tag       = "2.2-1.0.11.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.SagemakerFunctions;
/// import com.pulumi.aws.sagemaker.inputs.GetPrebuiltEcrImageArgs;
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
///         final var test = SagemakerFunctions.getPrebuiltEcrImage(GetPrebuiltEcrImageArgs.builder()
///             .repositoryName("sagemaker-scikit-learn")
///             .imageTag("2.2-1.0.11.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:sagemaker:getPrebuiltEcrImage
///       arguments:
///         repositoryName: sagemaker-scikit-learn
///         imageTag: 2.2-1.0.11.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sagemaker_get_prebuilt_ecr_image_get_prebuilt_ecr_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrebuiltEcrImageResult> getPrebuiltEcrImage(
  GetPrebuiltEcrImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sagemaker/getPrebuiltEcrImage:getPrebuiltEcrImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrebuiltEcrImageResult.fromMap(result);
}

pulumi.Output<GetPrebuiltEcrImageResult> getPrebuiltEcrImageOutput(
  GetPrebuiltEcrImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:sagemaker/getPrebuiltEcrImage:getPrebuiltEcrImage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrebuiltEcrImageResult.fromMap);
}
