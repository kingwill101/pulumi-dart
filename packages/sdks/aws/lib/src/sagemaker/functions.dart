import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prebuilt_ecr_image_args.dart';
import 'get_prebuilt_ecr_image_result.dart';

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
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_sagemaker_getprebuiltecrimage" "test" {
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
