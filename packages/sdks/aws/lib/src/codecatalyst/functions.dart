import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dev_environment_args.dart';
import 'get_dev_environment_result.dart';

/// Data source for managing an AWS CodeCatalyst Dev Environment.
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
/// const example = aws.codecatalyst.getDevEnvironment({
///     spaceName: "myspace",
///     projectName: "myproject",
///     envId: exampleAwsCodecatalystDevEnvironment.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codecatalyst.get_dev_environment(space_name="myspace",
///     project_name="myproject",
///     env_id=example_aws_codecatalyst_dev_environment["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CodeCatalyst.GetDevEnvironment.Invoke(new()
///     {
///         SpaceName = "myspace",
///         ProjectName = "myproject",
///         EnvId = exampleAwsCodecatalystDevEnvironment.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecatalyst"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codecatalyst.LookupDevEnvironment(ctx, &codecatalyst.LookupDevEnvironmentArgs{
/// 			SpaceName:   "myspace",
/// 			ProjectName: "myproject",
/// 			EnvId:       exampleAwsCodecatalystDevEnvironment.Id,
/// 		}, nil)
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
/// import com.pulumi.aws.codecatalyst.CodecatalystFunctions;
/// import com.pulumi.aws.codecatalyst.inputs.GetDevEnvironmentArgs;
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
///         final var example = CodecatalystFunctions.getDevEnvironment(GetDevEnvironmentArgs.builder()
///             .spaceName("myspace")
///             .projectName("myproject")
///             .envId(exampleAwsCodecatalystDevEnvironment.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:codecatalyst:getDevEnvironment
///       arguments:
///         spaceName: myspace
///         projectName: myproject
///         envId: ${exampleAwsCodecatalystDevEnvironment.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_codecatalyst_get_dev_environment_get_dev_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevEnvironmentResult> getDevEnvironment(
  GetDevEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codecatalyst/getDevEnvironment:getDevEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevEnvironmentResult.fromMap(result);
}
