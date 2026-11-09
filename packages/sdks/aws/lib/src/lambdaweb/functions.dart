import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_args.dart';
import 'get_function_endpoint_args.dart';
import 'get_function_endpoint_result.dart';
import 'get_function_result.dart';

/// &lt;!-- Copyright IBM Corp. 2014, 2026 --&gt;
/// &lt;!-- SPDX-License-Identifier: MPL-2.0 --&gt;
///
/// Provides details about an AWS Lambda Web function.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambdaweb.getFunction({
///     functionName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambdaweb.get_function(function_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.LambdaWeb.GetFunction.Invoke(new()
///     {
///         FunctionName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdaweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambdaweb.LookupFunction(ctx, &lambdaweb.LookupFunctionArgs{
/// 			FunctionName: "example",
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
/// data "aws_lambdaweb_function" "example" {
///   function_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdaweb.LambdawebFunctions;
/// import com.pulumi.aws.lambdaweb.inputs.GetFunctionArgs;
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
///         final var example = LambdawebFunctions.getFunction(GetFunctionArgs.builder()
///             .functionName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambdaweb:getFunction
///       arguments:
///         functionName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambdaweb_get_function_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambdaweb/getFunction:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}

pulumi.Output<GetFunctionResult> getFunctionOutput(
  GetFunctionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lambdaweb/getFunction:getFunction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionResult.fromMap);
}

/// &lt;!-- Copyright IBM Corp. 2014, 2026 --&gt;
/// &lt;!-- SPDX-License-Identifier: MPL-2.0 --&gt;
///
/// Provides details about an AWS Lambda Web function endpoint, including its HTTPS domain names.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambdaweb.getFunctionEndpoint({
///     functionName: "example",
///     endpointName: "default",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambdaweb.get_function_endpoint(function_name="example",
///     endpoint_name="default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.LambdaWeb.GetFunctionEndpoint.Invoke(new()
///     {
///         FunctionName = "example",
///         EndpointName = "default",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdaweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambdaweb.LookupFunctionEndpoint(ctx, &lambdaweb.LookupFunctionEndpointArgs{
/// 			FunctionName: "example",
/// 			EndpointName: "default",
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
/// data "aws_lambdaweb_function_endpoint" "example" {
///   function_name = "example"
///   endpoint_name = "default"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdaweb.LambdawebFunctions;
/// import com.pulumi.aws.lambdaweb.inputs.GetFunctionEndpointArgs;
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
///         final var example = LambdawebFunctions.getFunctionEndpoint(GetFunctionEndpointArgs.builder()
///             .functionName("example")
///             .endpointName("default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:lambdaweb:getFunctionEndpoint
///       arguments:
///         functionName: example
///         endpointName: default
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lambdaweb_get_function_endpoint_get_function_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionEndpointResult> getFunctionEndpoint(
  GetFunctionEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambdaweb/getFunctionEndpoint:getFunctionEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionEndpointResult.fromMap(result);
}

pulumi.Output<GetFunctionEndpointResult> getFunctionEndpointOutput(
  GetFunctionEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:lambdaweb/getFunctionEndpoint:getFunctionEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFunctionEndpointResult.fromMap);
}
