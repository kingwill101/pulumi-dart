import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_args.dart';
import 'get_resource_result.dart';

/// Provides details for a Cloud Control API Resource. The reading of these resources is proxied through Cloud Control API handlers to the backend service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudcontrol.getResource({
///     identifier: "example",
///     typeName: "AWS::ECS::Cluster",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudcontrol.get_resource(identifier="example",
///     type_name="AWS::ECS::Cluster")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudControl.GetResource.Invoke(new()
///     {
///         Identifier = "example",
///         TypeName = "AWS::ECS::Cluster",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudcontrol"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudcontrol.LookupResource(ctx, &cloudcontrol.LookupResourceArgs{
/// 			Identifier: "example",
/// 			TypeName:   "AWS::ECS::Cluster",
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
/// data "aws_cloudcontrol_getresource" "example" {
///   identifier = "example"
///   type_name  = "AWS::ECS::Cluster"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudcontrol.CloudcontrolFunctions;
/// import com.pulumi.aws.cloudcontrol.inputs.GetResourceArgs;
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
///         final var example = CloudcontrolFunctions.getResource(GetResourceArgs.builder()
///             .identifier("example")
///             .typeName("AWS::ECS::Cluster")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudcontrol:getResource
///       arguments:
///         identifier: example
///         typeName: AWS::ECS::Cluster
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudcontrol_get_resource_get_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceResult> getResource(
  GetResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudcontrol/getResource:getResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceResult.fromMap(result);
}
