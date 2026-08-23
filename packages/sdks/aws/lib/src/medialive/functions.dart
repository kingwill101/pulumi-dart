import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_input_args.dart';
import 'get_input_result.dart';

/// Data source for managing an AWS Elemental MediaLive Input.
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
/// const example = aws.medialive.getInput({
///     id: exampleAwsMedialiveInput.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.medialive.get_input(id=example_aws_medialive_input["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.MediaLive.GetInput.Invoke(new()
///     {
///         Id = exampleAwsMedialiveInput.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/medialive"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := medialive.LookupInput(ctx, &medialive.LookupInputArgs{
/// 			Id: exampleAwsMedialiveInput.Id,
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
/// data "aws_medialive_getinput" "example" {
///   id = exampleAwsMedialiveInput.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.medialive.MedialiveFunctions;
/// import com.pulumi.aws.medialive.inputs.GetInputArgs;
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
///         final var example = MedialiveFunctions.getInput(GetInputArgs.builder()
///             .id(exampleAwsMedialiveInput.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:medialive:getInput
///       arguments:
///         id: ${exampleAwsMedialiveInput.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_medialive_get_input_get_input_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInputResult> getInput(
  GetInputArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:medialive/getInput:getInput',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInputResult.fromMap(result);
}
