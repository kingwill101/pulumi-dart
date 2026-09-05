import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_args.dart';
import 'get_directory_result.dart';

/// Get attributes of AWS Directory Service directory (SimpleAD, Managed AD, AD Connector). It's especially useful to refer AWS Managed AD or on-premise AD in AD Connector configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.directoryservice.getDirectory({
///     directoryId: main.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.get_directory(directory_id=main["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DirectoryService.GetDirectory.Invoke(new()
///     {
///         DirectoryId = main.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directoryservice.LookupDirectory(ctx, &directoryservice.LookupDirectoryArgs{
/// 			DirectoryId: main.Id,
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
/// data "aws_directoryservice_getdirectory" "example" {
///   directory_id = main.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.DirectoryserviceFunctions;
/// import com.pulumi.aws.directoryservice.inputs.GetDirectoryArgs;
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
///         final var example = DirectoryserviceFunctions.getDirectory(GetDirectoryArgs.builder()
///             .directoryId(main.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:directoryservice:getDirectory
///       arguments:
///         directoryId: ${main.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_directoryservice_get_directory_get_directory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDirectoryResult> getDirectory(
  GetDirectoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directoryservice/getDirectory:getDirectory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryResult.fromMap(result);
}

pulumi.Output<GetDirectoryResult> getDirectoryOutput(
  GetDirectoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:directoryservice/getDirectory:getDirectory',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDirectoryResult.fromMap);
}
