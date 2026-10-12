import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_version_args.dart';
import 'get_image_version_result.dart';

/// Provides details about an AWS Lambda MicroVMs Image Version.
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
/// const example = aws.lambdamicrovms.getImageVersion({
///     imageIdentifier: exampleAwsLambdamicrovmsImage.arn,
///     imageVersion: exampleAwsLambdamicrovmsImage.imageVersion,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambdamicrovms.get_image_version(image_identifier=example_aws_lambdamicrovms_image["arn"],
///     image_version=example_aws_lambdamicrovms_image["imageVersion"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.LambdaMicroVMs.GetImageVersion.Invoke(new()
///     {
///         ImageIdentifier = exampleAwsLambdamicrovmsImage.Arn,
///         ImageVersion = exampleAwsLambdamicrovmsImage.ImageVersion,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdamicrovms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambdamicrovms.GetImageVersion(ctx, &lambdamicrovms.GetImageVersionArgs{
/// 			ImageIdentifier: exampleAwsLambdamicrovmsImage.Arn,
/// 			ImageVersion:    exampleAwsLambdamicrovmsImage.ImageVersion,
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
/// data "aws_lambdamicrovms_getimageversion" "example" {
///   image_identifier = exampleAwsLambdamicrovmsImage.arn
///   image_version    = exampleAwsLambdamicrovmsImage.imageVersion
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdamicrovms.LambdamicrovmsFunctions;
/// import com.pulumi.aws.lambdamicrovms.inputs.GetImageVersionArgs;
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
///         final var example = LambdamicrovmsFunctions.getImageVersion(GetImageVersionArgs.builder()
///             .imageIdentifier(exampleAwsLambdamicrovmsImage.arn())
///             .imageVersion(exampleAwsLambdamicrovmsImage.imageVersion())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambdamicrovms:getImageVersion
///       arguments:
///         imageIdentifier: ${exampleAwsLambdamicrovmsImage.arn}
///         imageVersion: ${exampleAwsLambdamicrovmsImage.imageVersion}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambdamicrovms_get_image_version_get_image_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageVersionResult> getImageVersion(
  GetImageVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambdamicrovms/getImageVersion:getImageVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageVersionResult.fromMap(result);
}

pulumi.Output<GetImageVersionResult> getImageVersionOutput(
  GetImageVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lambdamicrovms/getImageVersion:getImageVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImageVersionResult.fromMap);
}
